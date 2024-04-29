{-# LANGUAGE FlexibleContexts #-}
-- | Module to find prine numbers

module Utils.PrimeNumbers
  (
    primes,
    primeFactors,
    sieve,
  ) where

import Control.Monad.ST
import Data.Array.ST
import qualified Data.Set as Set
import Control.Monad
import Data.Char

primes = 2 : filter ( null . tail . primeFactors ) [3,5..]

primeFactors n = factor n primes
  where
    factor n lst@(p:ps)
      | mod n p == 0 = p : factor (div n p) lst
      | n < p*p = [n]
      | otherwise = factor n ps

sieve :: Int -> [Int]
sieve n = runST $ do
    arr <- newArray (2, n) True :: ST s (STUArray s Int Bool)
    let updateMultiples p = mapM_ (\i -> writeArray arr i False) [p*p, p*p+p..n]
    mapM_ (\p -> do
        isPrime <- readArray arr p
        when isPrime $ updateMultiples p
          ) [2..n]
    assocs <- getAssocs arr
    return [p | (p, True) <- assocs]
