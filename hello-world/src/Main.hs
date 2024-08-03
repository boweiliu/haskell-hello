import System.IO
import Data.Time.Clock (DiffTime, picosecondsToDiffTime)
import Data.Time.Clock.System (getSystemTime, systemNanoseconds)

-- module Main (main) where

-- s :: String
-- s = "hi there"

fileName :: FilePath
fileName = "input/1.txt"

main :: IO ()
main = do
  handle <- openFile fileName ReadMode
  (_, elapsed) <- timeAction (processFileHandle handle)
  putStrLn ("Elapsed: " ++ (show elapsed))
  hClose handle
  -- contents <- readFile fileName
  -- putStrLn contents



processFileHandle :: Handle -> IO ()
processFileHandle handle = do
  -- Read the next line
  eof <- hIsEOF handle
  if eof
      then return ()
      else do
          line <- hGetLine handle
          putStrLn line
          processFileHandle handle


timeAction :: IO a -> IO (a, DiffTime)
timeAction action = do
  before <- getSystemTime
  result <- action
  after <- getSystemTime
  let diffNanos = systemNanoseconds after - systemNanoseconds before
  let diffPicos :: Integer
      diffPicos = fromIntegral (diffNanos * 1000)
  return (result, picosecondsToDiffTime diffPicos)


