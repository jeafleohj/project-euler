-- |

module Solutions.Problem1
  (
    problem1,
  ) where

multipliesOfFiveOrThree n = [x| x<-[1..(n-1)], mod x 3 == 0 || mod x 5==0]

problem1 = (sum . multipliesOfFiveOrThree) 1000
