"""Check installed Hex sources against the pinned compatibility manifest offline."""
from pathlib import Path
import argparse
import hashlib
import json
import tomllib

ROOT = Path(__file__).resolve().parents[1]


def ensure(condition, message):
    if not condition:
        raise RuntimeError(message)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--manifest', type=Path, default=ROOT / 'environment/hex-lean430/SOURCES.json')
    args = parser.parse_args()
    record = json.loads(args.manifest.read_text(encoding='utf-8'))
    ensure((ROOT / 'lean-toolchain').read_text().strip() == record['toolchain'], 'Lean toolchain changed')
    manifest = json.loads((ROOT / 'lake-manifest.json').read_text(encoding='utf-8-sig'))
    mathlib = next(p for p in manifest['packages'] if p['name'] == 'mathlib')
    ensure(mathlib['rev'] == record['mathlib_revision'], 'Mathlib pin changed')
    requirements = {p['name']: p for p in tomllib.loads((ROOT / 'lakefile.toml').read_text())['require']}
    for package in record['packages']:
        ensure(requirements[package['name']]['path'] == package['directory'], 'Hex requirement path changed')
        entry = next(p for p in manifest['packages'] if p['name'] == package['name'])
        ensure(entry['type'] == 'path' and entry['dir'] == package['directory'], 'Hex lock entry changed')
    for relative, expected in record['files'].items():
        path = ROOT / relative
        actual = hashlib.sha256(path.read_bytes()).hexdigest()
        ensure(actual == expected, f'Compatibility source differs from manifest: {relative}')
    print(f'Hex source manifest: {len(record["files"])} files, four pinned compatibility packages; unchanged.')


if __name__ == '__main__':
    main()
