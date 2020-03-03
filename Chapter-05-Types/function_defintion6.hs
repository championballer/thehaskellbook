-- Function Definition from signature -- 

module FunctionDefn1 where

co :: (b->c) -> (a->b) -> a -> c
co bToC aToB a = bToC $ aToB a