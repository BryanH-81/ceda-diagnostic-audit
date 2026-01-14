# CEDA — Cosmological Explanation Diagnostic Audit

CEDA is a diagnostic framework, not a cosmological model. It does not propose new dynamics, introduce new fields, or compete with inflation or ΛCDM. Its sole purpose is to audit early-universe proposals by enforcing conservation-honest accounting and by distinguishing genuine physical mechanisms from descriptive bookkeeping.

CEDA does not answer what the early universe did.  
It answers what a proposal is actually doing.

---

## What This Is For

Many early-universe constructions generate inflation-like behavior only after reinterpretation: horizon reweighting, entropy language, effective stress–energy insertion, or privileged coarse-graining. These moves often survive casual checks while quietly shifting explanatory burden.

CEDA exists to expose that shift.

It provides a standardized way to ask:

- Where does the claimed dynamics actually live?
- What breaks when bookkeeping is no longer allowed to do physical work?
- Which degrees of freedom are genuinely dynamical, and which are descriptive?

---

## Quickstart — Audit Workflow

1. Fill out a Model Card  
   `templates/model-card.md`

2. Pass the Run Validity Gate  
   `protocol/run-validity-gate.md`

3. Run diagnostics (in order):  
   - `tests/D1-horizon-reconfiguration-null.md`  
   - `tests/D2-coarse-graining-stability.md`  
   - `tests/D3-exchange-term-provenance.md`  
   - `tests/D4-mechanism-audit.md`

4. Record outcomes in a Diagnostic Report  
   `templates/diagnostic-report.md`

5. Archive the completed run under:  
   `audits/CEDA-XXX-<paper-or-class>/`

That is the entire workflow. No interpretation after verdict.

---

## Repository Map

- `audits/` — completed audit runs (paper-level and class-level)  
- `framework/` — CEDA principles, assumptions, glossary  
- `protocol/` — run validity gate, verdict rules, no-rescue rule  
- `tests/` — diagnostic tests (D1–D4)  
- `templates/` — required Model Card and Diagnostic Report formats  
- `paper/` — canonical framework paper(s)  
- `sources/` — source papers audited (PDFs)

Start with `templates/`, then `protocol/run-validity-gate.md`, then `tests/D1-horizon-reconfiguration-null.md`.

---

## What CEDA Is Not

- Not a replacement for inflation  
- Not an alternative cosmological model  
- Not an observational framework  
- Not a mechanism generator  

CEDA does not judge whether inflation is correct.  
It clarifies why inflationary models require real dynamics to work.

---

## Status and Scope

**Status:** External review / diagnostic test-ground

**Scope:**  
CEDA audits inflation-adjacent early-universe proposals for:

- degree-of-freedom discipline  
- conservation and exchange accounting  
- coarse-graining stability  
- mechanism vs reinterpretation clarity  

---

## Core Claim (and only claim)

If a proposal relies on hidden structure, retrospective reinterpretation, or privileged description to generate physical behavior, the audit will surface it.

What you do with that result is up to you.
