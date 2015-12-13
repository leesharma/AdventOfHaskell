module NotQuiteLisp (findFinalFloor, findBasementStep) where

findFinalFloor :: String -> Int
findFinalFloor input = sum $ elevatorInstructions input

findBasementStep :: String -> Int
findBasementStep input =
  length $
    takeWhile (/= -1) $
      scanl (+) 0 $ elevatorInstructions input

elevatorInstructions :: String -> [Int]
elevatorInstructions rawinput =
  let convertInstruction '(' =  1
      convertInstruction ')' = -1
      convertInstruction  _  =  0
  in map convertInstruction rawinput
