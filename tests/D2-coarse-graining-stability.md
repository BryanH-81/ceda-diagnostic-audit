# D2 — Coarse-Graining Stability Test

## Purpose

To test whether a proposed mechanism is **structurally stable**
under admissible variations in coarse-graining or smoothing scale.

A physical mechanism must not depend on a privileged description.

---

## Target Class

- Models relying on specific smoothing scales
- Horizon-scale averaging arguments
- Effective descriptions sensitive to cutoff choice

---

## Test Procedure

1. Identify the declared coarse-graining prescription.
2. Vary the smoothing scale within physically admissible bounds.
3. Recompute:
   - Qualitative behavior (acceleration, equation of state)
   - Presence or absence of the claimed mechanism

---

## Pass Condition

The qualitative mechanism and its explanatory role
remain invariant under admissible coarse-graining variations.

---

## Fail Signatures

- Mechanism disappears or reverses under scale variation
- Stability asserted but not demonstrated
- Only one “natural” scale produces the desired behavior

---

## Notes

D2 does not require numerical precision.
It tests **structural robustness**, not parameter tuning.
