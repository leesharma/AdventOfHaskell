module Main where

import Day3 (housesReached)
import System.Environment

main :: IO ()
main = do
  input <- readFile "data/input.txt"
  putStrLn "(Reading from data/index.txt)"
  putStrLn $ "Number of houses visited: " ++ (show $ housesReached input)
