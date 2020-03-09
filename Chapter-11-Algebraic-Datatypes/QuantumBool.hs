-- QuantumBool -- 

module QuantumBool where

data QuantumBool = QuantumTrue
                 | QuantumFalse
                 | QuantumBoth
                 deriving (Show,Eq)

data TwoQs = MkTwoQs QuantumBool QuantumBool deriving (Show, Eq)

type TwoQs' = (QuantumBool, QuantumBool)

sample :: TwoQs' -> Bool 
sample (x,y) = True

sample' :: TwoQs -> Bool
sample' (MkTwoQs x y) = True