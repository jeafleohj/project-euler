-- |

module Solutions.Problem3 where

largestPrimeFactor n = lpf n 2
  where
    lpf n p
      | n == p = n
      | mod n p == 0 = lpf (div n p) p
      | otherwise = lpf n $ nextFactor p
    nextFactor n
      | n == 2 = 3
      | otherwise = n + 2

problem3 = largestPrimeFactor 600851475143
