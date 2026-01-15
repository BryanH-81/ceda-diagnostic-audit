<#
CEDA repo reconciliation script
- Creates canonical repo structure
- Moves legacy docs into archive
- Elevates WF1.2 into controls
- Adds top-of-file banners to archived docs
Run from repo root.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Ensure-Dir([string]$p) {
  if (-not (Test-Path $p)) { New-Item -ItemType Directory -Path $p | Out-Null }
}

function Move-IfExists([string]$src, [string]$dstDir) {
  if (Test-Path $src) {
    Ensure-Dir $dstDir
    Write-Host "MOVE: $src -> $dstDir"
    git mv $src $dstDir
  } else {
    Write-Host "SKIP (not found): $src"
  }
}

function Prepend-Banner([string]$path, [string]$banner) {
  if (-not (Test-Path $path)) { return }
  $content = Get-Content -Raw -Path $path
  if ($content.StartsWith($banner)) {
    Write-Host "BANNER already present: $path"
    return
  }
  Write-Host "ADD BANNER: $path"
  Set-Content -Path $path -Value ($banner + "`n`n" + $content) -NoNewline
}

# --- Sanity checks ---
if (-not (Test-Path ".git")) {
  throw "Run this from the repo root (folder containing .git)."
}
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  throw "Git not found in PATH. Install Git or open in a Git-enabled shell."
}

Write-Host "`n=== CEDA GitHub Reconciliation ===`n"

# --- 1) Create target structure ---
$dirs = @(
  "protocol",
  "templates",
  "tests",
  "controls",
  "examples",
  "archive",
  "archive/HEEF-pre-CEDA",
  "archive/legacy-drafts"
)
$dirs | ForEach-Object { Ensure-Dir $_ }

# --- 2) Promote / pin key governance docs ---
# NOTE: update these names if your repo uses different filenames
Move-IfExists "Scope and Non-Claims.md" "protocol"
Move-IfExists "Additional Diagnostic Controls and Clarifications.md" "protocol"
Move-IfExists "CEDA Audit Log.md" "examples"
Move-IfExists "CEDA Audit Index.md" "examples"
Move-IfExists "read.me.md" "archive/legacy-drafts"
Move-IfExists "read me.md" "archive/legacy-drafts"

# --- 3) Promote Interpretation Layer (translation control) ---
Move-IfExists "Interpretation Layer.docx" "protocol"

# --- 4) Move WF1.2 control into controls/ ---
Move-IfExists "WF1.2 — Null Control Example.md" "controls"
Move-IfExists "WF1.2" "controls"  # if it's a directory

# Optional: add a binding notice to WF1.2 readme if present
$wfReadmeCandidates = @(
  "controls/WF1.2/README.md",
  "controls/WF1.2.md",
  "controls/WF1.2 — Null Control Example.md"
)
$wfBanner = @"
> **BINDING NULL CONTROL (WF1.2):** This null result is a baseline control for CEDA.  
> Downstream audits may not reinterpret, retune, or “escape” this null within the same admissibility class.
"@.Trim()

foreach ($c in $wfReadmeCandidates) { Prepend-Banner $c $wfBanner }

# --- 5) Archive legacy HEEF / mechanism-era documents ---
Move-IfExists "Horizon-Enabled Expansion Framework (HEEF) Paper.pdf" "archive/HEEF-pre-CEDA"
Move-IfExists "HEEF-D (1).pdf" "archive/HEEF-pre-CEDA"
Move-IfExists "Emergent Horizon Model Framework_01_11_26.pdf" "archive/HEEF-pre-CEDA"
Move-IfExists "CEDA Test Grounds.pdf" "archive/legacy-drafts"
Move-IfExists "CEDA Test Kit v0.1.pdf" "archive/legacy-drafts"

# --- 6) Add “archived” banners to archived markdown files ---
$archivedBanner = @"
> **ARCHIVED (legacy draft):** This file predates the current CEDA status and/or WF1.2 scope corrections.  
> It is preserved for provenance, not as the canonical description of the framework.
"@.Trim()

Get-ChildItem -Path "archive" -Recurse -Filter *.md -ErrorAction SilentlyContinue |
  ForEach-Object { Prepend-Banner $_.FullName $archivedBanner }

Write-Host "`n=== Done. Repo tree (top level directories) ===`n"
Get-ChildItem -Directory | Select-Object Name | Format-Table -AutoSize

Write-Host "`nNext:"
Write-Host "  git status"
Write-Host "  git commit -am 'Reconcile repo structure; archive legacy docs; elevate WF1.2 null control'"
Write-Host "  git push"
