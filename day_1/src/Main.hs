module Main where

import NotQuiteLisp
import System.Environment

main :: IO ()

main = do
  [f]   <- getArgs
  input <- readFile f

  putStrLn $ "Final floor: " ++ (show $ findFinalFloor input)
  putStrLn $ "Descend Into Basement: step #" ++ (show $ findBasementStep input)
