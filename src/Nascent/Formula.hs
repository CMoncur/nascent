module Nascent.Formula
    ( euclideanDistance
    , euclideanDistanceSquared
    ) where

-- Core Dependencies
import Control.Exception ( throw )

-- Internal Dependencies
import Nascent.Exception


{- Will return the straight-line distance between two points in a Euclidean
-- space. Requires two lists as parameters to represent two n-dimensional
-- vectors.
-}
euclideanDistance :: Floating a => [ a ] -> [ a ] -> a
euclideanDistance v w
    | not $ length v == length w = throw DimensionalDiscrepancy
    | otherwise                  = sqrt $ euclideanDistanceSquared v w


{- Will return the straight-line distance between two points to the power
-- of two in a Euclidean space. Requires two lists as parameters to represent
-- two n-dimentional vectors.
-}
euclideanDistanceSquared :: Num a => [ a ] -> [ a ] -> a
euclideanDistanceSquared v w
    | not $ length v == length w = throw DimensionalDiscrepancy
    | otherwise                  = let vw = zip v w in
        foldl (\ x ( vs, ws ) -> x + ( ( vs - ws ) ^ ( 2 :: Int ) ) ) 0 vw
