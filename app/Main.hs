module Main where

import qualified Solutions as Sols
import Data.Map (Map)
import qualified Data.Map as Map
import Text.Read (readMaybe)

main :: IO ()
main = do
    putStrLn "Write a problem number:"
    input <- getLine
    case readMaybe input of
        Nothing -> putStrLn "Please enter a valid number."
        Just n -> case Map.lookup n solutions of
            Nothing -> putStrLn $
              "Problem not solved. Solved problems are: " ++ show (Map.keys solutions)
            Just sol -> putStrLn sol

solutions :: Map Int String
solutions = Map.fromList
  [ (1, show Sols.problem1)
  , (2, show Sols.problem2)
  , (3, show Sols.problem3)
  , (4, show Sols.problem4)
  , (5, show Sols.problem5)
  , (6, show Sols.problem6)
  , (7, show Sols.problem7)
  , (8, show Sols.problem8)
  , (9, show Sols.problem9)
  , (10, show Sols.problem10)
  ]
