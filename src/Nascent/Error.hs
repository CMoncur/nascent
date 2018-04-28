module Nascent.Error ( NascentError( .. ) ) where


{- General exceptions related to Nascent -}
data NascentError
    = NascentError
    | DimensionalDiscrepancy
        deriving ( Eq )


instance Show NascentError where
    show NascentError = nascentErrorMsg
    show DimensionalDiscrepancy = dimensionalDiscrepancyMsg


{- Exception Strings -}
nascentErrorMsg :: String
nascentErrorMsg =
    "Nascent Exception: General error"


dimensionalDiscrepancyMsg :: String
dimensionalDiscrepancyMsg =
    "Dimensional Discrepancy: Values with differing dimensions were supplied"
