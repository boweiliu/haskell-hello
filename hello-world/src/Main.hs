import System.IO
import Data.Time.Clock (getCurrentTime, diffUTCTime, DiffTime)

-- module Main (main) where

-- s :: String
-- s = "hi there"

fileName :: FilePath
fileName = "input/1.txt"

main :: IO ()
main = do
  handle <- openFile fileName ReadMode
  processHandle handle
  hClose handle
  -- contents <- readFile fileName
  -- putStrLn contents



processHandle :: Handle -> IO ()
processHandle handle = do
  -- Read the next line
  eof <- hIsEOF handle
  if eof
      then return ()
      else do
          line <- hGetLine handle
          putStrLn line
          processHandle handle


timeAction :: IO a -> IO (a, DiffTime)
timeAction action = do
  result <- action
  return (action, 0)
