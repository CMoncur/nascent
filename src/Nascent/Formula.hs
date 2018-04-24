module Nascent.Formula
    ( euclideanDistanceSquared
    ) where

-- Core Dependencies
--import Control.Exception

-- Internal Dependencies
--import Nascent.Exception as Exc


{- Will return the straight-line distance between two points to the power
-- of two in a Euclidean space.
-}
euclideanDistanceSquared :: Num a => [ a ] -> [ a ] -> a
euclideanDistanceSquared a b
    | not $ length a == length b = error "fuck"
    | otherwise                  = let vw = zip a b in
        foldl (\ x ( vs, ws ) -> x + ( ( vs - ws ) ^ 2 ) ) 0 vw
