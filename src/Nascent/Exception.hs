module Nascent.Exception ( NascentException ) where

-- Core Dependencies
import Control.Exception
import Data.Typeable


{- General exceptions related to Nascent -}
data NascentException = DimensionalDiscrepancy
        deriving ( Show, Typeable )

instance Exception NascentException
