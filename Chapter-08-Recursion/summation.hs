summation :: (Eq a, Num a) => a -> a
summation n 
 | n == 0 = 0
 | otherwise = (+) n $ summation $ n-1