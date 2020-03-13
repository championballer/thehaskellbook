myReverse :: [a] -> [a]
myReverse x = foldr (\x y -> y ++ [x]) [] x