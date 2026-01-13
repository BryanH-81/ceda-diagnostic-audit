# CEDA Diagnostic Report

**Audit ID:** CEDA-006-tsamis-woodard-1996  
**Paper:** Tsamis & Woodard — _Quantum Gravity Slows Inflation_ (hep-ph/9602315)  
**Audit Class:** Quantum gravitational backreaction as a background expansion modifier  
**Framework Version:** CEDA v1.0  
**Status:** Final (verdict locked)

---

## Summary Verdict

**Verdict:** CONDITIONAL — Mechanism is derived, but not yet stability-earned

The proposal derives a secular correction to the effective expansion rate H_eff(t) from
two-loop quantum gravitational processes and expresses the induced stress–energy in terms
of H_eff(t). This is not a horizon-entropy bookkeeping insertion: the effect is computed
within the gravitational sector.

However, the central physical claim (late-time strong screening / shutdown of inflation)
is not stability-earned within the paper’s demonstrated regime because the effect becomes
nonperturbatively large precisely where perturbation theory breaks down. In addition, the
interpretation depends critically on gauge/observable choice and infrared regulation,
which remain the dominant external fault lines in this literature.

Therefore CEDA assigns a **conditional** verdict: the paper supplies a legitimate derived
candidate mechanism, but does not close the stability and predictive wedge requirements
needed for a mechanism-level win.

---

## Run Validity Gate

**Result:** PASS

- Clear DOF: quantum gravitons about de Sitter background.
- Clear observable definition: H_eff(t) = d ln(a)/dt in their setup.
- Result is equation-level explicit (two-loop secular correction).
- No horizon agency or thermodynamic relabeling used as the driver.

---

## D1 — Horizon Reconfiguration Without Added Dynamics

**Result:** PASS

Acceleration/slowing is not produced by repartitioning horizons or entropic forces. The effect
is attributed to quantum gravitational backreaction in the bulk gravitational sector.

---

## D3 — Exchange-Term Provenance

**Result:** PASS (internal-sector)

This is not a matter↔vacuum two-fluid bookkeeping model. The “exchange” is internal to the
gravitational sector: graviton production and self-interaction in an inflating background.
No hidden Q-term is used to close matter continuity.

---

## D2 — Coarse-Graining / Stability

**Result:** CONDITIONAL FAIL

The key secular correction grows as ~ (Ht)^2 and is argued to accumulate over the past lightcone.
But the claimed end-state (strong screening, possible shutdown/oscillation) lies beyond the
paper’s controlled perturbative regime, and the paper explicitly notes the nonperturbative regime
as an open problem.

CEDA cannot accept a mechanism-level conclusion when the claimed decisive behavior occurs only
after the demonstrated approximation breaks.

---

## D4 — Mechanism Audit / Predictive Wedge

**Result:** CONDITIONAL FAIL

The paper’s observational wedge is not established at mechanism level within the controlled regime.
A robust wedge would require:

- an explicitly gauge-invariant observable construction that survives scrutiny across admissible gauges,
- a stable prediction for the time evolution of H_eff(t) into the nonperturbative regime,
- and a clear mapping to late-time/exit/reheating consequences.

Absent those, the proposal remains a derived candidate mechanism without a locked predictive wedge.

---

## Key Anchors (from paper)

Effective Hubble constant definition:
H_eff(t) ≡ d ln(a) / dt.

Two-loop secular correction:
H_eff(t) = H [1 − (κH/4π)^4 (1/6)(Ht)^2 + … + O(κ^6)].

Induced stress tensor definition and effective ρ, p:
G*{μν} + Λ g*{μν} ≡ 8πG T\_{μν},
ρ(t) = (6/κ^2)(H_eff^2 − H^2),
p(t) = −ρ(t) − (4/κ^2) \dot{H}\_eff(t).

---

## Failure Registry IDs Triggered

- F-03 (Privileged regime / stability not demonstrated across admissible choices) — conditional
- F-04 (Mechanism not earned beyond perturbation control) — conditional

No horizon-agency failures are triggered.

---

## What Would Upgrade This Verdict

To upgrade from CONDITIONAL to PASS, the following would be required:

1. A controlled nonperturbative treatment (or rigorous resummation) demonstrating the late-time behavior
   of H_eff(t) without relying on extrapolation past perturbative breakdown.

2. A clear, gauge-robust invariant observable definition of “local expansion rate” whose secular behavior
   is stable under admissible gauge choices and infrared regulation.

3. A predictive wedge linking the backreaction to exit/reheating or an observable signature not equivalent
   to an effective retuned Λ(t) parameterization.

Absent these, the proposal remains an important computed candidate effect, but not a locked mechanism.

---

**CEDA-006 is now locked.**
