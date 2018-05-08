module Nascent.Error ( NascentError( .. ) ) where


{- General exceptions related to Nascent -}
data NascentError
    = NascentError
    | DimensionalDiscrepancy
    | ZeroDimensionalInput
        deriving ( Eq, Ord )


instance Show NascentError where
    show NascentError           = nascentErrorMsg
    show DimensionalDiscrepancy = dimensionalDiscrepancyMsg
    show ZeroDimensionalInput   = zeroDimensionalInput


{- Exception Strings -}
nascentErrorMsg :: String
nascentErrorMsg =
    "Nascent Exception: General error"


dimensionalDiscrepancyMsg :: String
dimensionalDiscrepancyMsg =
    "Dimensional Discrepancy: Values with differing dimensions were supplied"


zeroDimensionalInput :: String
zeroDimensionalInput =
    "Zero Dimensional Input: A value with zero dimensions was supplied"
