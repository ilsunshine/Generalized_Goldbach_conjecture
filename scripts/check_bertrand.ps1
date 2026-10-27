[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$previousToolchain = $env:ELAN_TOOLCHAIN
Push-Location -LiteralPath $projectRoot
try {
    if (-not $env:ELAN_TOOLCHAIN) {
        $installed = (& elan toolchain list) -join "`n"
        if ($installed -notmatch 'leanprover/lean4:v4\.30\.0' -and $installed -match 'lean430-local') {
            $env:ELAN_TOOLCHAIN = 'lean430-local'
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
    $forbidden = '\b(sorry|admit|axiom|sorryAx|native_decide|unsafe)\b|debug\.skipKernelTC|\+native\b|native\s*:=\s*true'
    if (Select-String -LiteralPath 'GeneralizedGoldbach/BertrandTail.lean','Supplement/BertrandTail.lean' -Pattern $forbidden) {
        throw 'Disallowed proof mechanism in the supplementary proof.'
    }
    & lake --wfail build GeneralizedGoldbach.BertrandTail GeneralizedGoldbach.PrimeTail
    if ($LASTEXITCODE -ne 0) { throw 'Formal tail interface build failed.' }
    New-Item -ItemType Directory -Path '.lake/build/lib/lean/Supplement' -Force | Out-Null
    & lake env lean -DwarningAsError=true -o .lake/build/lib/lean/Supplement/BertrandTail.olean Supplement/BertrandTail.lean
    if ($LASTEXITCODE -ne 0) { throw 'Supplement proof build failed.' }
    & lake env lean -DwarningAsError=true Supplement/Audit.lean
    if ($LASTEXITCODE -ne 0) { throw 'Supplement axiom/dependency audit failed.' }
    Write-Output 'Bertrand route and compatibility entry checks passed.'
}
finally {
    $env:ELAN_TOOLCHAIN = $previousToolchain
    Pop-Location
}
