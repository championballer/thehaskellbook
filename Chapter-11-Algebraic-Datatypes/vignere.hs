import Data.Char

vignere [] _ _ = []
vignere (x:xs) p i 
 | x == ' ' = ' ': vignere xs p (mod (i) (length p))
 | otherwise = (f x (p !! i)):(vignere xs p (mod (i+1) (length p)))

f x i = chr $ (mod ((ord x - 97) + (ord i -97)) 26) + 97

main :: IO()