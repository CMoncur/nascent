module FormulaSpec ( spec ) where

-- External Dependencies
import Test.Hspec

-- Internal Dependencies
import Nascent.Formula


{- Formulae Tests -}
spec :: Spec
spec = do
    describe "Formula" $ do
        context "Euclidean Distance" $ do
            it "should result in 0 when passed empty lists" $
                euclideanDistance [] [] `shouldBe` Right 0
