module TrigonometryTests exposing (suite)

import ComplexNumbers
import Expect
import Fuzz
import Real
import Test
import Trigonometry


suite : Test.Test
suite =
    Test.describe "Trigonometry tests"
        [ Test.fuzz
            (Fuzz.map Real.Real (Fuzz.floatRange -10 10))
            "tests coscos + sinsin is equal to one"
          <|
            \theta ->
                if Real.equal.eq (Real.add (Trigonometry.coscos theta) (Trigonometry.sinsin theta)) Real.one then
                    Expect.pass

                else
                    Expect.fail "coscos + sinsin is not equal to one"
        ]
