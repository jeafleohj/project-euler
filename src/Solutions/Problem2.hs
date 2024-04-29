module Solutions.Problem2 where

import Utils.Fibonacci

problem2 =
  (sum . filter even . takeWhile (<= 4 * 10 ^ 6)) fibs
