module Main where

import Day2 (requiredPaper, parseDimFile)
import System.Environment

main :: IO ()

main = do
  input <- readFile "data/input.txt"
  putStrLn "(Using data/index.txt)"
  putStrLn $ "Total required wrapping paper: " ++
             (show $ foldl (+) 0 $ map requiredPaper $ parseDimFile input)
