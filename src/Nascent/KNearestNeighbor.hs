module Nascent.KNearestNeighbor
    ( K
    , KNN ( .. )
    , KNNModel ( .. )
    , TrainingSet
    , Vector
    ) where

-- Internal Dependencies
import Nascent.Formula


-- Data Types
type K = Int

type Vector = [ Float ]

type TrainingSet = ( K, [ Vector ] )


-- K Nearest Neighbor Typeclass/Data Type
class KNNModel a where
    classify :: a -> Bool


data KNN = KNN TrainingSet


instance KNNModel KNN where
    classify ( KNN ( k, dataset ) ) = False
