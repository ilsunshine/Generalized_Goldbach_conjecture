"""A deliberately false sign with an UPDATED hash must still be rejected."""
import gzip
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

root = Path(__file__).resolve().parents[1]
scratch = root / "tmp"
scratch.mkdir(exist_ok=True)
with tempfile.TemporaryDirectory(prefix="bad-certificate-", dir=scratch) as dirname:
    fixture = Path(dirname).resolve()
    if not fixture.is_relative_to(scratch.resolve()):
        raise RuntimeError("Fixture escaped the project scratch directory")
    for p in (root / "certificates").iterdir():
        if p.is_file():
            shutil.copyfile(p, fixture / p.name)
    datafile = fixture / "rebuilt_uniform.json.gz"
    with gzip.open(datafile, "rt", encoding="utf-8") as f:
        data = json.load(f)
    data[0]["chains"][0][1] *= -1
    with gzip.open(datafile, "wt", encoding="utf-8") as f:
        json.dump(data, f, separators=(",", ":"))
    manifest = json.loads((fixture / "manifest.json").read_text(encoding="utf-8"))
    manifest["sha256"][datafile.name] = hashlib.sha256(datafile.read_bytes()).hexdigest()
    (fixture / "manifest.json").write_text(json.dumps(manifest), encoding="utf-8")
    result = subprocess.run([sys.executable, str(root / "scripts" / "verify_certificates.py"),
                             "--certificate-dir", str(fixture)],
                            capture_output=True, text=True, encoding="utf-8")
    if result.returncode == 0 or "('sign', 11," not in result.stderr:
        raise RuntimeError(f"Wrong rejection behavior: {result.returncode}\n{result.stdout}\n{result.stderr}")
    print("PASS: false chain sign rejected even after updating its SHA-256; original data untouched.")
