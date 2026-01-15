\# CEDA — Cosmological Explanation Diagnostic Audit

CEDA is a \*\*diagnostic framework\*\*, not a cosmological model. It does not propose new dynamics, introduce new fields, or compete with inflation or ΛCDM. Its sole purpose is to audit early-universe proposals by enforcing conservation-honest accounting and distinguishing \*\*genuine physical mechanisms\*\* from \*\*descriptive bookkeeping\*\*.

\#\# What This Is For

Many early-universe constructions generate inflation-like behavior only after reinterpretation: horizon reweighting, entropy language, effective stress–energy insertion, or privileged coarse-graining. These moves often survive casual checks while quietly shifting explanatory burden.  

CEDA exists to expose that shift. It provides a standardized way to ask: \*Where does the claimed dynamics actually live?\* and \*What breaks when bookkeeping is no longer allowed to do physical work?\*

\#\# Quickstart

1\. Fill out a \*\*Model Card\*\*: \`templates/model-card.md\`  

2\. Run diagnostics (start with \*\*D1\*\*, then \*\*D2\*\*): \`tests/\`  

3\. Record outcomes in a \*\*Diagnostic Report\*\*: \`templates/diagnostic-report.md\`  

4\. Assign a verdict and archive the run under \`examples/\<paper-id\>/\`

That’s the entire workflow.

\#\# Repo Map

\- \`paper/\` — canonical PDF(s) describing the framework  

\- \`tests/\` — diagnostic tests (D1–D4)  

\- \`templates/\` — required model card and report formats  

\- \`protocol/\` — validity gate, verdict rules, no-rescue rule  

\- \`examples/\` — completed audit runs


Start with \`templates/\`, then \`tests/D1-horizon-reconfiguration-null.md\`.

\#\# Status and Limitations

\*\*Status:\*\* External review / test-ground phase.  

\*\*Limitations:\*\*  

\- Not a replacement for inflation  

\- Not an observational framework  

\- Not a mechanism generator


CEDA makes only one claim: if a proposal relies on hidden structure, retrospective reinterpretation, or privileged description, the audit will surface it. What you do with that result is up to you.

