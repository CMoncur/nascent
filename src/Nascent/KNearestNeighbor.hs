module Nascent.KNearestNeighbor
    ( Classification
    , K
    , KNN ( .. )
    , KNNModel ( .. )
    , Vector
    ) where

-- Core Dependencies
import Data.List
import Data.Ord

-- Internal Dependencies
import Nascent.Error ( NascentError ( .. ) )
import Nascent.Formula as Formula


-- Data Types
type Classification = String
type K              = Int
type Vector         = [ Float ]


-- K Nearest Neighbor Typeclass/Data Type
class KNNModel knn where
    classify :: knn -> Vector -> Either NascentError Classification
    classifyList :: knn -> [ Vector ] -> Either NascentError [ Classification ]
    train :: knn -> knn


data KNN = KNN
    { k :: K
    , training_data :: [ ( Vector, Classification ) ]
    }


instance KNNModel KNN where
    classify            = _classify
    -- classifyList        = _classifyList
    train               = _train


-- Private Functions
_classify :: KNN -> Vector -> Either NascentError Classification
_classify ( KNN { training_data = [] } ) _  = Left ZeroDimensionalInput
_classify ( KNN { k = k, training_data = d } ) v
    | not $ all sameDimension d = Left DimensionalDiscrepancy
    | otherwise                 = Right $ _determineClass k d v
        where
            sameDimension ( w, _ ) = length v == length w


_determineClass :: K
    -> [ ( Vector, Classification ) ]
    -> Vector
    -> Classification
_determineClass k d v = head
    $ maximumBy ( comparing length )
    $ group
    $ take k
    $ map (\ w -> snd w )
    $ sort
    $ map (\ ( w, c ) -> ( Formula.euclideanDistance v w, c ) ) d


_train :: KNN -> KNN
_train knn =
    knn
