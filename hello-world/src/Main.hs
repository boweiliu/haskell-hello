module Main (main) where

-- s :: String
-- s = "hi there"

fileName :: String
fileName = "input/1.txt"

main :: IO ()
main = do
  contents <- readFile fileName
  putStrLn contents
