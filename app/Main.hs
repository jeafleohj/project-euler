module Main where
import qualified Solutions as Sols

solved :: [Int]
solved = [2]

main :: IO ()
main = do
  n <- read <$> getLine
  let problem = if n `elem` solved then Just n else Nothing
  case problem of
    Nothing -> putStrLn "Not Solved"
    Just 2 -> putStrLn $ show Sols.evenFibonacciNumbers
