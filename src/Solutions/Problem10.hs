-- |

module Solutions.Problem10 where

import Utils(sieve)

problem10 = sum . sieve $ 2*10^6
