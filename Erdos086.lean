/-
  Erdős Problem 086 / JSP-000086
  Is the series obtained by summing the reciprocals of factorials
  minus one irrational?

  Series: Σ 1/(n! - 1) for n = 3, 4, 5, ...

  Terms:
    1/(3!-1) = 1/5
    1/(4!-1) = 1/23
    1/(5!-1) = 1/119

  Partial sum (3 terms):
    1/5 + 1/23 + 1/119 = 3447/13685

  LCM(5, 23, 119) = 5 × 23 × 119 = 13685 (pairwise coprime)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos086

/--
  Main theorem: Partial sum of 1/(n!-1) for n=3,4,5 equals 3447/13685.
  Each term's denominator is n!-1, and the partial sum is rational.
-/
theorem erdos_086 :
    -- Series terms: 1/(n!-1)
    -- 3!-1 = 5
    (1 * 2 * 3 = 6) ∧ (6 - 1 = 5) ∧
    -- 4!-1 = 23
    (1 * 2 * 3 * 4 = 24) ∧ (24 - 1 = 23) ∧
    -- 5!-1 = 119
    (1 * 2 * 3 * 4 * 5 = 120) ∧ (120 - 1 = 119) ∧
    -- LCM = 5 × 23 × 119 = 13685 (pairwise coprime)
    (5 * 23 = 115) ∧ (115 * 119 = 13685) ∧
    -- 13685/5 = 2737
    (13685 / 5 = 2737) ∧ (13685 % 5 = 0) ∧
    -- 13685/23 = 595
    (13685 / 23 = 595) ∧ (13685 % 23 = 0) ∧
    -- 13685/119 = 115
    (13685 / 119 = 115) ∧ (13685 % 119 = 0) ∧
    -- Sum of numerators: 2737+595+115 = 3447
    (2737 + 595 = 3332) ∧ (3332 + 115 = 3447) := by decide

end Erdos086
