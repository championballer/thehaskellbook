{-# LANGUAGE NoMonomorphismRestriction #-}

-- arith4.hs -- 

module Arith4 where

-- id :: a -> a
-- id x = x

g = (read . show)
roundTrip :: (Show a, Read a) => a -> a
roundTrip a = g a

roundTrip' :: (Show a, Read b) => a -> b
roundTrip' a = read.show $ a

main = do
 print (roundTrip 4)
 print ((roundTrip 4) :: Int)
 print ((roundTrip 4) :: Float)
 print (id 4)