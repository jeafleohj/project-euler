module Solutions.EvenFibonacciNumbers where

import Utils.Fibonacci

evenFibonacciNumbers =
  (sum . filter even . takeWhile (<= 4 * 10 ^ 6)) fibs
