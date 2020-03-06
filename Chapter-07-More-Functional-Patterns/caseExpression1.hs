-- Case expression exercise question 1 --

module CaseExp1 where

functionC x y = 
    case c of
        True  -> x
        False -> y
    where c = x > y

ifEvenAdd2 n = 
    case c of 
        True -> (n+2)
        False -> n
    where c = even n

nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0