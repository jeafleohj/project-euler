-- |

module Solutions.Problem5
  (
    problem5
  ) where

problem5 :: Int
problem5 = foldr1 lcm [1..20]
