-- |

module Solutions.Problem9
  (
    problem9
  ) where
import Utils (sqrtInt)

isPerfectSquare :: Int -> Bool
isPerfectSquare x = sqrtInt x ^ 2 == x

pythagoreanTriplets n = [[a, b, c]
             | a <- [1 .. n]
             , b <- [a .. n]
             , let c2 = a^2 + b^2
             , isPerfectSquare (a^2 + b^2)
             , let c = sqrtInt c2
             , a+b+c == n
             ]

problem9 =  product . head . pythagoreanTriplets $ 1000
