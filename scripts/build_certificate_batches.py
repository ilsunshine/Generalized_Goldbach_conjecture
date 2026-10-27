"""Build certificate modules in bounded groups; never bypass Lean's kernel."""
from pathlib import Path
import argparse
import json
import os
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('targets', type=Path)
    parser.add_argument('--jobs', type=int, default=4)
    parser.add_argument('--log', type=Path, required=True)
    args = parser.parse_args()
    targets = json.loads(args.targets.read_text(encoding='utf-8'))
    if (not isinstance(targets, list) or not targets or
            any(not isinstance(target, str) or not target for target in targets) or
            len(set(targets)) != len(targets) or args.jobs < 1):
        raise ValueError('Expected a nonempty unique target list and a positive job count.')
    started = time.monotonic()
    with args.log.open('a', encoding='utf-8') as log:
        # Ask Lake to validate all traces without starting any compilation.
        # A cold/stale/error result always falls back to the bounded real build.
        # This avoids hundreds of Lake startups on a fully checked checkout.
        log.write('\nCache-only probe; a nonzero status triggers the real build below.\n')
        log.flush()
        probe = subprocess.run(['lake', '--no-build', '--wfail', 'build', *targets],
                               cwd=ROOT, stdout=log, stderr=log, env=os.environ.copy(),
                               creationflags=getattr(subprocess, 'CREATE_NO_WINDOW', 0))
        if probe.returncode == 0:
            print(f'Lake validated all {len(targets)} cached certificate modules '
                  f'in {time.monotonic()-started:.1f}s', flush=True)
            return
        log.write(f'Cache probe status {probe.returncode}; running bounded kernel builds.\n')
        log.flush()
        for index in range(0, len(targets), args.jobs):
            group = targets[index:index+args.jobs]
            log.write(f'\nCertificate group {index}: {group}\n')
            log.flush()
            result = subprocess.run(['lake', '--wfail', 'build', *group], cwd=ROOT, stdout=log, stderr=log,
                                    env=os.environ.copy(), creationflags=getattr(subprocess, 'CREATE_NO_WINDOW', 0))
            if result.returncode:
                raise RuntimeError(f'Certificate build failed at {group}; see {args.log}')
            print(f'Kernel checked {min(index+len(group),len(targets))}/{len(targets)} modules '
                  f'in {time.monotonic()-started:.1f}s', flush=True)


if __name__ == '__main__':
    main()
