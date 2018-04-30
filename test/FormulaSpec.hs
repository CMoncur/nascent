module FormulaSpec ( spec ) where

-- External Dependencies
import Test.Hspec

-- Internal Dependencies
import Nascent.Error
import Nascent.Formula


{- Formulae Tests -}
spec :: Spec
spec = do
    describe "Formula" $ do
        context "Euclidean Distance" $ do
            it "should result in 0 when passed empty lists" $
                euclideanDistance [] [] `shouldBe` Right 0

            it "should return error when passed lists of different sizes" $
                euclideanDistance [ 1, 2 ] [ 1, 2, 3 ] `shouldBe`
                    Left DimensionalDiscrepancy

            it "should properly find distance between two points" $
                euclideanDistance [ 0, 1 ] [ 1, 1 ] `shouldBe` Right 1

            it "should find distance given higher dimensional inputs" $
                euclideanDistance [ 3, 4, 5, 6 ] [ 5, 6, 7, 8 ] `shouldBe`
                    Right 4
