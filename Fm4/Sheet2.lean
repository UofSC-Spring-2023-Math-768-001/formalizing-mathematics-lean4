/-
Copyright (c) 2022 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author : Kevin Buzzard
-/

-- import tactic -- imports all the Lean tactics
import Std.Tactic.Basic -- imports triv and exfalso 

/-!

# Logic in Lean, example sheet 2 : `True` and `False`

We learn about the `True` and `False` propositions.

## Tactics you will need

To solve the levels on this sheet you will need to know all previous
tactics, plus the following two new ones. Check out their explanations
in the course book. Or just try them out and hover over them to see
if you can understand what's going on.

* `triv`
* `exfalso`

-/

-- Throughout this sheet, `P`, `Q` and `R` will denote propositions.

variable (P Q R : Prop)

example : True := by
  triv

example : True → True := by
  sorry

example : False → True := by
  intro h
  exfalso 
  exact h

example : False → False := by
  sorry

example : (True → False) → False := by
  sorry

example : False → P := by
  sorry

example : True → False → True → False → True → False := by
  sorry

example : P → ((P → False) → False) := by
  sorry

example : (P → False) → P → Q := by
  sorry

example : (True → False) → P := by
  sorry

