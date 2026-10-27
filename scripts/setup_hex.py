"""Fetch the four pinned Hex sources and apply the Lean 4.30 compatibility patches.

Only pins, patches and hashes are stored in this repository. Existing matching
sources are reused; divergent local sources are never overwritten.
"""
from __future__ import annotations
import argparse
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import subprocess
import tarfile
import tempfile
import urllib.request

ROOT = Path(__file__).resolve().parents[1]
CONFIG = ROOT / 'environment/hex-lean430'
PREFIX = 'third_party/hex-lean430/'


def verify(directory: Path):
    manifest = json.loads((CONFIG / 'SOURCES.json').read_text(encoding='utf-8'))
    for name, digest in manifest['files'].items():
        path = directory / name.removeprefix(PREFIX) if name.startswith(PREFIX) else ROOT / name
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise ValueError(f'Hex source missing or changed: {name}')


def install(directory: Path):
    manifest = json.loads((CONFIG / 'SOURCES.json').read_text(encoding='utf-8'))
    directory = directory.resolve()
    directory.mkdir(parents=True, exist_ok=True)
    for package in manifest['packages']:
        short = Path(package['directory']).name
        target = directory / short
        entries = {name.removeprefix(PREFIX + short + '/'): digest
                   for name, digest in manifest['files'].items()
                   if name.startswith(PREFIX + short + '/')}
        if target.exists():
            if all((target / p).is_file() and hashlib.sha256((target / p).read_bytes()).hexdigest() == h
                   for p, h in entries.items()):
                print(f'{package["name"]}: matching sources already installed.', flush=True)
                continue
            raise FileExistsError(f'Refusing to overwrite a divergent dependency: {target}')
        repository = package['repository'].removeprefix('https://github.com/')
        url = f'https://codeload.github.com/{repository}/tar.gz/{package["revision"]}'
        print(f'{package["name"]}: downloading pinned source.', flush=True)
        with urllib.request.urlopen(url, timeout=60) as response:
            archive = response.read()
        with tempfile.TemporaryDirectory(prefix='.hex-download-', dir=directory) as temp:
            work = Path(temp).resolve()
            if not work.is_relative_to(directory):
                raise ValueError('Temporary directory outside dependency root')
            with tarfile.open(fileobj=io.BytesIO(archive), mode='r:gz') as tar:
                for member in tar:
                    parts = PurePosixPath(member.name).parts
                    if len(parts) < 2:
                        continue
                    if '..' in parts or member.name.startswith('/'):
                        raise ValueError('Unsafe archive member')
                    path = work.joinpath(*parts[1:])
                    if not path.resolve().is_relative_to(work):
                        raise ValueError('Archive path outside temporary directory')
                    if member.isdir():
                        path.mkdir(parents=True, exist_ok=True)
                    elif member.isfile():
                        path.parent.mkdir(parents=True, exist_ok=True)
                        path.write_bytes(tar.extractfile(member).read())
                    else:
                        raise ValueError('Links and special archive files are not accepted')
            subprocess.run(['git', '-c', 'core.autocrlf=false', 'apply',
                            str(CONFIG / 'patches' / (short + '.patch'))], cwd=work, check=True)
            for name, digest in entries.items():
                path = work / name
                content = path.read_bytes()
                if hashlib.sha256(content).hexdigest() != digest:
                    # Original Windows compatibility files used mixed LF/CRLF.
                    # Accept only a newline variant with the exact recorded hash.
                    lf = content.replace(b'\r\n', b'\n')
                    variants = (lf, lf.replace(b'\n', b'\r\n'))
                    matched = next((v for v in variants if hashlib.sha256(v).hexdigest() == digest), None)
                    if matched is None:
                        raise ValueError(f'Patched source digest mismatch: {short}/{name}')
                    path.write_bytes(matched)
            # Both locations are validated children of this explicitly selected root.
            if not target.resolve().is_relative_to(directory):
                raise ValueError('Dependency destination outside selected root')
            work.rename(target)
        print(f'{package["name"]}: compatibility sources verified.', flush=True)
    verify(directory)
    print('All four Hex compatibility packages match their pinned source hashes.')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--directory', type=Path, default=ROOT / PREFIX)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    verify(args.directory) if args.check else install(args.directory)


if __name__ == '__main__':
    main()
