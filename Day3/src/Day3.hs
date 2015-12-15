module Day3
  ( startingLocation
  , path
  , housesReached
  , translateDirections
  ) where

startingLocation = (0,0)
path dirs = startingLocation : zipWith (.+) (translateDirections dirs) (path dirs)
            where (a,b) .+ (c,d) = (a+c,b+d)

housesReached dirs = length $ unique $ path dirs
                     where unique (x:xs) | x `elem` xs = unique xs
                                         | otherwise   = x : unique xs
                           unique [] = []

translateDirections dirs = map translateDirection dirs
                           where translateDirection dir | dir == '>' = (1,0)
                                                        | dir == '<' = (-1,0)
                                                        | dir == '^' = (0,1)
                                                        | dir == 'v' = (0,-1)
                                                        | otherwise  = (0,0)

