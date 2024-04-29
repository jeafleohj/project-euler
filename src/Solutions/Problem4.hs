-- |

module Solutions.Problem4 where

isPalindrome n = reverse n == n

problem4 =
  let
    lst = [100..999]
  in maximum $ [p|a<-lst, b<-lst, let p = a*b, isPalindrome (show p)]
