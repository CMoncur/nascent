module Nascent.KNearestNeighbor
    ( Classification
    , K
    , KNN ( .. )
    , KNNModel ( .. )
    , TrainingSet ( .. )
    , Vector
    ) where

-- Internal Dependencies
import Nascent.Formula


-- Data Types
type Classification = String

type K = Int

type Vector = [ Float ]

data TrainingSet = TrainingSet
    { k :: K
    , training_data :: [ ( Vector, Classification ) ]
    }

-- K Nearest Neighbor Typeclass/Data Type
class KNNModel a where
    classify :: a -> Classification
    train :: a -> a


data KNN = KNN TrainingSet


instance KNNModel KNN where
    train t = t
