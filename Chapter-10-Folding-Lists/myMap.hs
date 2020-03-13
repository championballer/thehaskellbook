myMap :: (a->b)->[a]->[b]
myMap f x = foldr (\x y -> [f x] ++ y) [] x