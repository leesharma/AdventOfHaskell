module Day3Spec where

import SpecHelper

spec :: Spec
spec = do
  describe "True" $ do
    it "equals True" $ do
      True `shouldBe` True

  describe "startingLocation" $ do
    it "equals (0,0)" $ do
      startingLocation `shouldBe` (0,0)

  describe "translateDirections" $ do
    context "empty string" $ do
      it "equals []" $ do
        translateDirections "" `shouldBe` []
    context "non-empty string \"^>v\"" $ do
      it "equals [(0,1), (1,0), (0, -1)]" $ do
        translateDirections "^>v" `shouldBe` [(0,1),(1,0),(0,-1)]

  describe "path" $ do
    context "without directions \"\"" $ do
      it "equals [(0,0)]" $ do
        path "" `shouldBe` [(0,0)]
    context "with directions \"^>v\"" $ do
      it "equals [(0,0), (0,1), (1,1), (1,0)]" $ do
        path "^>v" `shouldBe` [(0,0), (0,1), (1,1), (1,0)]

  describe "housesReached" $ do
    context "with non-repeating visits \"^>v\"" $ do
      it "equals 3" $ do
        housesReached "^>v" `shouldBe` 4
    context "with repeating visits \"^v^v^v^v\"" $ do
      it "equals 2" $ do
        housesReached "^v^v^v^v" `shouldBe` 2

main :: IO ()
main = hspec spec
