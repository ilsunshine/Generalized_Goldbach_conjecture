"""Copy the compiled paper and export the proof CSVs without changing Lean data.

Default: refresh all CSVs from the original certificate inputs and copy the local
compiled paper. --paper-only is used after local LaTeX compilation.
"""
from __future__ import annotations

import argparse
import csv
import gzip
import hashlib
import json
from pathlib import Path
import shutil

ROOT = Path(__file__).resolve().parents[1]
PROOF = ROOT / 'proof'
DATA = PROOF / 'data'
INPUTS = ROOT / 'certificates'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_csv(name, header, rows):
    with (DATA / name).open('w', encoding='utf-8', newline='') as stream:
        writer = csv.writer(stream, lineterminator='\n')
        writer.writerow(header)
        writer.writerows(rows)


def compact(values):
    return json.dumps(values, separators=(',', ':'))


def export_data():
    raw = json.loads((INPUTS / 'manifest.json').read_text(encoding='utf-8'))
    for name, expected in raw['sha256'].items():
        if digest(INPUTS / name) != expected:
            raise ValueError(f'Certificate input hash changed: {name}')
    DATA.mkdir(parents=True, exist_ok=True)
    with gzip.open(INPUTS / 'rebuilt_uniform.json.gz', 'rt', encoding='utf-8') as stream:
        uniform = json.load(stream)
    small = json.loads((INPUTS / 'rebuilt_small.json').read_text(encoding='utf-8'))
    write_csv('uniform_parameters.csv', ['q', 'd', 'ell', 'T'],
              ([row[k] for k in ('q', 'd', 'ell', 'T')] for row in uniform))
    write_csv('uniform_even_chains.csv', ['q', 'residue', 'sign', 'coefficients'],
              ((row['q'], r, s, compact(js)) for row in uniform for r, s, js in row['chains']))
    write_csv('uniform_odd_witnesses.csv', ['q', 'residue', 'sign', 'k'],
              ((row['q'], r, s, k) for row in uniform for r, s, k in row['odd']))
    chains = [(q, 0, r, s, compact(ns)) for q in (3, 5)
              for r, s, ns in small[str(q)]['chains']]
    chains += [(7, index, r, s, compact(ns))
               for index, stage in enumerate(small['7']['stages'], 1)
               for r, s, ns in stage['chains']]
    write_csv('small_even_chains.csv', ['q', 'stage', 'residue', 'sign', 'points'], chains)
    write_csv('small_odd_witnesses.csv', ['q', 'residue', 'sign', 'A'],
              ((q, r, s, a) for q in (3, 5, 7) for r, s, a in small[str(q)]['odd']))
    # The finite CSV is copied byte for byte, including its original header.
    shutil.copyfile(INPUTS / 'rebuilt_finite.csv', DATA / 'finite_witnesses.csv')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--paper-only', action='store_true')
    parser.add_argument('--paper-source', type=Path, default=ROOT / 'latex/build/main.pdf')
    args = parser.parse_args()
    PROOF.mkdir(exist_ok=True)
    if not args.paper_only:
        export_data()
    if not args.paper_source.is_file():
        raise FileNotFoundError(f'Compile the local paper first: {args.paper_source}')
    shutil.copyfile(args.paper_source, PROOF / 'paper.pdf')
    expected_names = {'uniform_parameters.csv', 'uniform_even_chains.csv', 'uniform_odd_witnesses.csv',
                      'small_even_chains.csv', 'small_odd_witnesses.csv', 'finite_witnesses.csv'}
    if {p.name for p in DATA.glob('*.csv')} != expected_names:
        raise ValueError('Expected exactly six published CSVs; run without --paper-only first.')
    record = {
        'schema_version': 1,
        'origin': 'CSV copies/exports of independently rebuilt certificates; not missing original attachments',
        'source_inputs': json.loads((INPUTS / 'manifest.json').read_text(encoding='utf-8'))['sha256'],
        'sha256': {p.relative_to(PROOF).as_posix(): digest(p)
                   for p in [PROOF / 'paper.pdf', *sorted(DATA.glob('*.csv'))]},
        'counts': {'uniform_chains': 31672, 'uniform_chain_points': 1770208,
                   'uniform_odd_witnesses': 32492, 'small_chains': 184, 'small_chain_points': 2203,
                   'small_odd_witnesses': 136, 'finite_rows': 149753, 'finite_decompositions': 449259},
    }
    (PROOF / 'manifest.json').write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Published paper and six CSVs synchronized; mathematical verification: python proof/verify.py')


if __name__ == '__main__':
    main()
