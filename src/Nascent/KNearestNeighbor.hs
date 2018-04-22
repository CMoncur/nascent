{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

module Nascent.KNearestNeighbor
    ( fltr
    ) where

fltr :: (a -> Bool) -> [a] -> [a]
fltr fn []       = []
fltr fn (x:xs)
    | fn x       = x : fltr fn xs
    | otherwise  = fltr fn xs
