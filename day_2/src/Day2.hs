module Day2  where
import Data.List.Split (splitOn)

-- Calculates surface area of a box given dimensions
surfaceArea dims = foldl (+) 0 $ map (*2) $ sides dims

-- Calculates required wrapping paper for given dimensions
-- (surface area + slack)
requiredPaper dims = (minimum $ sides dims) + (surfaceArea dims)

-- Calculate surface area for each side of a box given l,w,h dimensions
sides [l,w,h] = [l*w,w*h,h*l]

-- Parses a string of dimensions in the "1x2x3" format, separated by newlines
parseDimFile :: String -> [[Int]]
parseDimFile rawinput =
  let dims = filter (/="") (splitOn "\n" rawinput)
  in [[read dim :: Int | dim <- lwh] | lwh <- (map (splitOn "x") dims) ]

