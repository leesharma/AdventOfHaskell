module Day2Test (tests) where

import Day2 (surfaceArea, requiredPaper, parseDimFile)
import Test.HUnit

-- surfaceArea
saTest1 = TestCase (assertEqual "surfaceArea [2,3,4]," 52 (surfaceArea [2,3,4]))
saTest2 = TestCase (assertEqual "surfaceArea [1,1,10]," 42 (surfaceArea [1,1,10]))
saTests = [TestLabel "saTest1" saTest1, TestLabel "saTest2" saTest2]

-- requiredPaper
rpTest1 = TestCase (assertEqual "requiredPaper [2,3,4]," 58 (requiredPaper [2,3,4]))
rpTest2 = TestCase (assertEqual "requiredPaper [1,1,10]," 43 (requiredPaper [1,1,10]))
rpTests = [TestLabel "rpTest1" rpTest1, TestLabel "rpTest2" rpTest2]

-- parseDimFile
parseTest1 = TestCase (assertEqual "parseDimFile \"1x1x1\\n1x2x3\\n\""
                                   [[1,1,1], [1,2,3]] (parseDimFile "1x1x1\n1x2x3\n"))
parseTests = [TestLabel "parseTest1" parseTest1]

tests = TestList (saTests ++ rpTests ++ parseTests)
