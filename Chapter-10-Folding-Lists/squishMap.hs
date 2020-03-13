squishMap :: (a->[b]) -> [a] -> [b]
squishMap f x = foldr (\x y -> f x ++ y) [] x