"""Maintainer-only: record source hashes and diffs against pinned upstream clones.

Normal checks must use check_hex_sources.py, which never refreshes this record.
"""
from pathlib import Path
import difflib
import hashlib
import json
import subprocess

ROOT = Path(__file__).resolve().parents[1]
VENDOR = ROOT / 'third_party/hex-lean430'
CONFIG = ROOT / 'environment/hex-lean430'


def main():
    packages = json.loads((CONFIG / 'origins.json').read_text(encoding='utf-8'))
    patches = CONFIG / 'patches'
    patches.mkdir(exist_ok=True)
    for package in packages:
        source = ROOT / '.lake/packages' / package['name']
        actual = subprocess.check_output(['git', '-c', f'safe.directory={source.as_posix()}',
                                          '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip()
        assert actual == package['revision'], (package['name'], actual)
        directory = ROOT / package['directory']
        changes = []
        for path in sorted(directory.rglob('*')):
            if not path.is_file() or '.lake' in path.relative_to(directory).parts:
                continue
            relative = path.relative_to(directory)
            old = source / relative
            original = old.read_text(encoding='utf-8') if old.exists() else ''
            updated = path.read_text(encoding='utf-8')
            changes.extend(difflib.unified_diff(original.splitlines(keepends=True),
                                               updated.splitlines(keepends=True),
                                               fromfile='a/' + relative.as_posix(),
                                               tofile='b/' + relative.as_posix()))
        (patches / (directory.name + '.patch')).write_text(''.join(changes), encoding='utf-8', newline='\n')
    files = {}
    for package in packages:
        for path in sorted((ROOT / package['directory']).rglob('*')):
            if path.is_file() and '.lake' not in path.relative_to(VENDOR).parts:
                files[path.relative_to(ROOT).as_posix()] = hashlib.sha256(path.read_bytes()).hexdigest()
    for path in [CONFIG/'origins.json', CONFIG/'COMPATIBILITY.md', *sorted(patches.glob('*.patch'))]:
        files[path.relative_to(ROOT).as_posix()] = hashlib.sha256(path.read_bytes()).hexdigest()
    record = dict(toolchain='leanprover/lean4:v4.30.0',
                  mathlib_revision='c5ea00351c28e24afc9f0f84379aa41082b1188f',
                  packages=packages, files=files)
    (CONFIG / 'SOURCES.json').write_text(json.dumps(record, indent=2) + '\n', encoding='utf-8')
    print(f'Recorded {len(files)} compatibility files and four source patches.')


if __name__ == '__main__':
    main()
