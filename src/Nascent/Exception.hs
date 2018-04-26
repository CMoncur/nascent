module Nascent.Exception ( NascentException( .. ) ) where


{- General exceptions related to Nascent -}
data NascentException
    = NascentException
    | DimensionalDiscrepancy
        deriving ( Show )


instance Show NascentException where
    show NascentException = nascentExceptionMsg
    show DimensionalDiscrepancy = DimensionalDiscrepancyMsg


{- Exception Strings -}
nascentExceptionMsg :: String
nascentExceptionMsg =
    "Nascent Exception: General error"


dimensionalDiscrepancyMsg :: String
dimensionalDiscrepancyMsg =
    "Dimensional Discrepancy: Values with differing dimensions were supplied"
