-- | Functions to compute fibonacci

module Utils
  (
    fibs,
    primes,
    primeFactors,
    sieve,
    sqrtInt,
  ) where

import Utils.Fibonacci
import Utils.PrimeNumbers

sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral
