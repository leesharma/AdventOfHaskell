module Main where

import Day2 (requiredPaper, parseDimFile, totalRibbon)
import System.Environment

main :: IO ()

main = do
  input <- readFile "data/input.txt"
  putStrLn "(Using data/index.txt)"
  putStrLn $ "Total required wrapping paper: " ++
             (show $ sum $ map requiredPaper $ parseDimFile input)
  putStrLn $ "Total required ribbon: " ++
             (show $ sum $ map totalRibbon $ parseDimFile input)
