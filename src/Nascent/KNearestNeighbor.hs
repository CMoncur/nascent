module Nascent.KNearestNeighbor
    ( fltr
    ) where

fltr :: (a -> Bool) -> [a] -> [a]
fltr _ []       = []
fltr fn (x:xs)
    | fn x       = x : fltr fn xs
    | otherwise  = fltr fn xs
