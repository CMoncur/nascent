module KNearestNeighborSpec ( spec ) where

-- External Dependencies
import Test.Hspec

-- Internal Dependencies
import Nascent.KNearestNeighbor


{- K Nearest Neighbor Tests -}
spec :: Spec
spec = do
    describe "K Nearest Neighbor" $ do
        context "fltr" $ do
            it "should handle empty lists" $
                fltr ( > 5 ) [] `shouldBe` []
