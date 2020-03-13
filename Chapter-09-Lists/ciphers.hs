module Cipher where

import Data.Char

shift :: Char -> Int -> Char
shift x p = chr $ ((((ord x) - 97) + rp) `mod` 26) + 97
 where rp = p `mod` 26

caesar :: String -> Int -> String
caesar [] _ = []
caesar (x:xs) p = (shift x p) : (caesar xs p)

unCaesar :: String -> Int -> String
unCaesar xs p = caesar xs (-p) 
