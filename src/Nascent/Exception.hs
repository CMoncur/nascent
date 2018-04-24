module Nascent.Exception ( NascentException( .. ) ) where

-- Core Dependencies
import Control.Exception


{- General exceptions related to Nascent -}
data NascentException
    = NascentException
    | DimensionalDiscrepancy
        deriving ( Show )

instance Exception NascentException
