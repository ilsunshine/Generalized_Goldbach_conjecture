[CmdletBinding()]
param(
    [ValidateSet('Strict', 'Scaffold')]
    [string]$Mode = 'Strict',
    [ValidateRange(1, 4)]
    [int]$CertificateJobs = 3
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$previousToolchain = $env:ELAN_TOOLCHAIN
Push-Location -LiteralPath $projectRoot
try {
    # Only this process uses the already installed matching toolchain alias.
    # The portable lean-toolchain file and the user's global settings stay intact.
    if (-not $env:ELAN_TOOLCHAIN) {
        $installed = (& elan toolchain list) -join "`n"
        if ($installed -notmatch 'leanprover/lean4:v4\.30\.0' -and $installed -match 'lean430-local') {
            $env:ELAN_TOOLCHAIN = 'lean430-local'
        }
    }
    $libraryFiles = @(Get-Item -LiteralPath 'GeneralizedGoldbach.lean') +
        @(Get-ChildItem -LiteralPath 'GeneralizedGoldbach' -Filter '*.lean' -Recurse -File)
    $smokeFiles = @(Get-Item -LiteralPath 'checks/Smoke.lean') +
        @(Get-Item -LiteralPath 'checks/OriginalStatements.lean') +
        @(Get-Item -LiteralPath 'checks/CertificateRejection.lean') +
        @(Get-Item -LiteralPath 'checks/HexCertificates.lean') +
        @(Get-Item -LiteralPath 'checks/FullCertificates.lean')
    $forbidden = '\b(admit|axiom|sorryAx|native_decide|unsafe)\b|debug\.skipKernelTC|\+native\b|native\s*:=\s*true'
    if ($Mode -eq 'Strict') { $forbidden = '\bsorry\b|' + $forbidden }
    $findings = @($libraryFiles + $smokeFiles | Select-String -Pattern $forbidden)
    if ($findings.Count -gt 0) {
        $findings | ForEach-Object { Write-Host $_ }
        throw 'Unfinished proofs or disallowed trust mechanisms found.'
    }
    $rootText = Get-Content -LiteralPath 'GeneralizedGoldbach.lean' -Raw
    foreach ($source in $libraryFiles | Where-Object { $_.Name -ne 'GeneralizedGoldbach.lean' }) {
        $relative = $source.FullName.Substring($projectRoot.Length + 1)
        $moduleName = ($relative -replace '\.lean$', '') -replace '[\\/]', '.'
        if ($rootText -notmatch "(?m)^public import $([regex]::Escape($moduleName))\s*$") {
            throw "Module absent from root imports: $moduleName"
        }
    }
    $version = (& lean --version) -join "`n"
    if ($LASTEXITCODE -ne 0 -or $version -notmatch 'version 4\.30\.0[,\s]') {
        throw "Expected Lean 4.30.0, got: $version"
    }
    $rev = (& git -C .lake/packages/mathlib rev-parse HEAD) -join ''
    if ($LASTEXITCODE -ne 0 -or $rev -ne 'c5ea00351c28e24afc9f0f84379aa41082b1188f') {
        throw "Unexpected Mathlib revision: $rev"
    }
    Write-Host "Source/import/version checks passed: $($libraryFiles.Count + $smokeFiles.Count) Lean files."
    & python scripts/check_hex_sources.py
    if ($LASTEXITCODE -ne 0) { throw 'Hex compatibility source manifest check failed.' }
    & python scripts/check_full_sources.py
    if ($LASTEXITCODE -ne 0) { throw 'Full-certificate source manifest check failed.' }
    & python scripts/check_paper_references.py
    if ($LASTEXITCODE -ne 0) { throw 'Paper and Lean comment reference check failed.' }
    if ($Mode -eq 'Scaffold') {
        $holes = @($libraryFiles | Select-String -Pattern '^\s+sorry\s*$')
        Write-Host "SCAFFOLD ONLY: $($holes.Count) placeholders. No proof-completion claim."
    }
    # Keep independent certificate blocks bounded on machines with limited RAM.
    # Each target still elaborates and checks its ordinary proof in Lean's kernel.
    New-Item -ItemType Directory -Force -Path 'tmp' | Out-Null
    & python scripts/build_certificate_batches.py checks/full-certificate-targets.json `
        --jobs $CertificateJobs --log tmp/full-certificate-build.log
    if ($LASTEXITCODE -ne 0) { throw 'Full-certificate block build failed.' }
    if ($Mode -eq 'Strict') { & lake build GeneralizedGoldbach HexPrimalityTheory --wfail }
    else { & lake build GeneralizedGoldbach HexPrimalityTheory }
    if ($LASTEXITCODE -ne 0) { throw 'Lake build failed.' }
    $audit = if ($Mode -eq 'Strict') { 'checks/Axioms.lean' } else { 'checks/Scaffold.lean' }
    foreach ($check in @('checks/Smoke.lean', 'checks/OriginalStatements.lean', 'checks/CertificateRejection.lean',
        'checks/HexCertificates.lean', 'checks/FullCertificates.lean',
        'checks/IntegratedInterfaces.lean', $audit, 'checks/Progress.lean')) {
        if ($check -eq 'checks/HexCertificates.lean') {
            # The search tactic uses upstream precompiled runtime modules.
            # Lake's file runner loads these plugins; proof terms still use the kernel.
            & lake lean $check -- -DwarningAsError=true
        }
        else { & lake env lean -DwarningAsError=true $check }
        if ($LASTEXITCODE -ne 0) { throw "Lean check failed: $check" }
    }
    & python scripts/report_proof_progress.py
    if ($LASTEXITCODE -ne 0) { throw 'Proof-progress source/axiom reconciliation failed.' }
    Write-Host "$Mode checks passed. Axiom reports: output/verification/lean-proof-progress.json"
}
finally {
    $env:ELAN_TOOLCHAIN = $previousToolchain
    Pop-Location
}
