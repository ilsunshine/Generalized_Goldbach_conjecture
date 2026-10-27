"""Check committed full-certificate data and input hashes; this is not a proof."""
from pathlib import Path
import hashlib
import json
import argparse

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--manifest', type=Path, default=ROOT/'checks/full-certificate-manifest.json')
    args = parser.parse_args()
    manifest = json.loads(args.manifest.read_text(encoding='utf-8'))
    source_names = {p.relative_to(ROOT).as_posix()
                    for p in (ROOT/'GeneralizedGoldbach/LargeCertificates').rglob('*.lean')}
    if source_names != set(manifest['generated_sources']):
        raise RuntimeError('Full-certificate source inventory does not match the manifest.')
    for group in ('inputs', 'original_sources', 'generated_sources'):
        for name, digest in manifest[group].items():
            actual = hashlib.sha256((ROOT/name).read_bytes()).hexdigest()
            if actual != digest:
                raise RuntimeError(f'Changed {group} file: {name}')
    # Historical manuscripts are provenance, not required release inputs.
    for name, digest in manifest.get('optional_original_sources', {}).items():
        path = ROOT / name
        if path.exists() and hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise RuntimeError(f'Changed optional historical source: {name}')
    targets = json.loads((ROOT/'checks/full-certificate-targets.json').read_text(encoding='utf-8'))
    expected = {name.removesuffix('.lean').replace('/', '.') for name in source_names}
    if len(targets) != len(expected) or set(targets) != expected:
        raise RuntimeError('Full-certificate build target list is incomplete or duplicated.')
    if len(targets) != manifest['counts']['build_targets']:
        raise RuntimeError('Full-certificate target count differs from the manifest.')
    print(f'Full-certificate source manifest passed: {len(source_names)} Lean modules; required inputs unchanged.')


if __name__ == '__main__':
    main()
