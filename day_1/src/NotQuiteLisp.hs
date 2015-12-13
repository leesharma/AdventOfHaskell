module NotQuiteLisp (findFloor) where

findFloor :: String -> Int
findFloor input =
    let count c = length $ filter (==c) input
    in (count '(') - (count ')')
