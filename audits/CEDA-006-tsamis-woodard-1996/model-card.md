# CEDA Model Card

**Audit ID:** CEDA-006-tsamis-woodard-1996  
**Paper:** Tsamis & Woodard — _Quantum Gravity Slows Inflation_ (hep-ph/9602315)  
**Audit Class:** Quantum gravitational backreaction as a background expansion driver/modifier  
**Status:** Translation complete (pre-diagnostic)

---

## 1. Proposal Summary (As Claimed)

The proposal claims that infrared quantum gravitational effects in an initially inflating
(de Sitter) universe generate a secular backreaction which reduces the effective expansion
rate. The effect arises at two loops (no secular effect at one loop) and accumulates over
time, becoming non-perturbatively large at late times.

---

## 2. Declared Degrees of Freedom

### Dynamical

- Metric (gravity) quantized perturbatively about de Sitter
- Gravitons as the relevant massless, non-conformally-invariant quanta

### Background inputs / assumptions

- Initial state close to de Sitter vacuum
- Topology taken as T^3 × R (finite comoving box at onset)
- Perturbative expansion around a_class(t) = exp(Ht)

---

## 3. Role of Horizons

The mechanism is attributed to infrared graviton effects which accumulate over the growing
past lightcone volume in de Sitter-like expansion. Horizon language is used descriptively
(“infrared”, “Hubble scale”) but the horizon is not an independent dynamical degree of freedom.

---

## 4. Conservation Structure

The construction is within quantum gravity around a fixed Λ background. Backreaction is encoded
through the expectation value of an invariantly defined effective expansion rate H*eff(t).
An induced stress tensor is defined from the deficit relative to the classical field equations:
G*{μν} + Λ g*{μν} ≡ 8πG T*{μν}.

No explicit matter–vacuum exchange term is introduced; the effect is internal to the gravitational sector.

---

## 5. Location of Accelerated Expansion (or its slowing)

The background inflationary driver is Λ (classical de Sitter with H = sqrt(Λ/3)).
The novelty claim is that graviton loop effects reduce H_eff(t) over time.

Key definition:
H_eff(t) ≡ d ln(a) / dt.

Key result (two-loop secular correction):
H_eff(t) = H [1 − (κH/4π)^4 (1/6)(Ht)^2 + … + O(κ^6)].

---

## 6. Coarse-Graining and Description Level

- Calculation is perturbative in κ^2 = 16πG.
- Secular growth appears through time-enhanced terms (Ht)^2.
- Nonperturbative regime is acknowledged as unresolved once the correction becomes large.

Regulator / gauge / observable robustness is central to interpretation.

---

## 7. Claims Relevant to Diagnostics

- Quantum gravity backreaction slows inflation secularly (two-loop effect).
- The effective expansion rate is gauge-invariant (as defined in their construction).
- Higher loops act in the same sense (screening/slowdown), with late-time nonperturbative significance.
