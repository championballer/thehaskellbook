multiplication :: (Eq a, Num a) => a -> a -> a
multiplication a b 
 | b == 0 = 0
 | otherwise = (+) a $ multiplication a $ b - 1