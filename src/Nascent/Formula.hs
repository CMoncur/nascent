module Nascent.Formula
    ( euclideanDistance
    , euclideanDistanceSquared
    ) where

-- Internal Dependencies
import Nascent.Error ( NascentError( .. ) )


{- Will return the straight-line distance between two points in a Euclidean
-- space. Requires two lists as parameters to represent two n-dimensional
-- vectors.
-}
euclideanDistance :: Floating a => [ a ] -> [ a ] -> Either NascentError a
euclideanDistance v w
    | length v /= length w = Left DimensionalDiscrepancy
    | otherwise            = let squared = euclideanDistanceSquared v w in
        case squared of
            Left err -> Left err
            Right dis -> Right $ sqrt $ dis


{- Will return the straight-line distance between two points to the power
-- of two in a Euclidean space. Requires two lists as parameters to represent
-- two n-dimentional vectors.
-}
euclideanDistanceSquared :: Num a => [ a ] -> [ a ] -> Either NascentError a
euclideanDistanceSquared v w
    | length v /= length w  = Left DimensionalDiscrepancy
    | otherwise             = Right $ sum $ zipWith distanceSquared v w
        where
            distanceSquared vs ws = ( vs - ws ) ^ ( 2 :: Int )
