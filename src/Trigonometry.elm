module Trigonometry exposing
    ( coscos
    , sinsin
    )

import Real


coscos (Real.Real theta) =
    Basics.cos theta
        * Basics.cos theta
        |> Real.Real


sinsin (Real.Real theta) =
    Basics.sin theta
        * Basics.sin theta
        |> Real.Real
