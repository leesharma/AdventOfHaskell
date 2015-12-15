module Day2Test (tests) where

import Day2 (surfaceArea, requiredPaper, parseDimFile, ribbon, bow, totalRibbon)
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

-- ribbon
ribbonTest1 = TestCase (assertEqual "ribbon [2,3,4]," 10 (ribbon [2,3,4]))
ribbonTest2 = TestCase (assertEqual "ribbon [1,1,10]," 4 (ribbon [1,1,10]))
ribbonTests = [TestLabel "ribbonTest1" ribbonTest1, TestLabel "ribbonTest2" ribbonTest2]

-- box
bowTest1 = TestCase (assertEqual "bow [2,3,4]," 24 (bow [2,3,4]))
bowTest2 = TestCase (assertEqual "bow [1,1,10]," 10 (bow [1,1,10]))
bowTests = [TestLabel "bowTest1" bowTest1, TestLabel "bowTest2" bowTest2]

-- totalRibbon
totalRibbonTest1 = TestCase (assertEqual "totalRibbon [2,3,4]," 34 (totalRibbon [2,3,4]))
totalRibbonTest2 = TestCase (assertEqual "totalRibbon [1,1,10]," 14 (totalRibbon [1,1,10]))
totalRibbonTests = [TestLabel "totalRibbonTest1" totalRibbonTest1, TestLabel "totalRibbonTest2" totalRibbonTest2]

tests = TestList (saTests ++ rpTests ++ parseTests ++
                  ribbonTests ++ bowTests ++ totalRibbonTests)
