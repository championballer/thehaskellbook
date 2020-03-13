squish :: [[a]] -> [a]
squish x = foldr (\x y -> x ++ y) [] x