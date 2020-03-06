factorial :: Integer -> Integer
factorial x
 | x <= 0 = 1
 | otherwise = (*) x $ factorial $ x - 1

main :: IO()
main = do
    print $ factorial 5 