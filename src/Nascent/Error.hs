module Nascent.Error ( NascentError( .. ) ) where


{- General exceptions related to Nascent -}
data NascentError
    = NascentError
    | DimensionalDiscrepancy
    | EmptyTrainingSet
    | ZeroDimensionalInput
        deriving ( Eq, Ord )


instance Show NascentError where
    show NascentError           = nascentErrorMsg
    show DimensionalDiscrepancy = dimensionalDiscrepancyMsg
    show EmptyTrainingSet       = emptyTrainingSet
    show ZeroDimensionalInput   = zeroDimensionalInput


{- Exception Strings -}
nascentErrorMsg :: String
nascentErrorMsg =
    "Nascent Exception: General error"


dimensionalDiscrepancyMsg :: String
dimensionalDiscrepancyMsg =
    "Dimensional Discrepancy: Values with differing dimensions were supplied"


emptyTrainingSet :: String
emptyTrainingSet =
    "Empty Training Set: The training set supplied had no items"


zeroDimensionalInput :: String
zeroDimensionalInput =
    "Zero Dimensional Input: A value with zero dimensions was supplied"
