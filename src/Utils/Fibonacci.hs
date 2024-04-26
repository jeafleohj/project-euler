-- |

module Utils.Fibonacci
  (
    fibs
  ) where

fibs = 1 : 2 : zipWith (+) fibs (tail fibs)
