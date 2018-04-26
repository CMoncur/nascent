module Nascent.Error ( NascentError( .. ) ) where


{- General exceptions related to Nascent -}
data NascentError
    = NascentError
    | DimensionalDiscrepancy
        deriving ( Show )


instance Show NascentError where
    show NascentError = nascentErrorMsg
    show DimensionalDiscrepancy = DimensionalDiscrepancyMsg


{- Exception Strings -}
nascentErrorMsg :: String
nascentErrorMsg =
    "Nascent Exception: General error"


dimensionalDiscrepancyMsg :: String
dimensionalDiscrepancyMsg =
    "Dimensional Discrepancy: Values with differing dimensions were supplied"
