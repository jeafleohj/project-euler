-- |

module Solutions.Problem6
  (
    problem6
  )where

sumSquareDifference n =
  let
    lst = [1..n]
  in sum lst ^ 2 - sum (map (^2) lst)

problem6 = sumSquareDifference 100
