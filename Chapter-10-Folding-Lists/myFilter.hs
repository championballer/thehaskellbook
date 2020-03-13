myFilter :: (a->Bool)->[a]->[a]
myFilter f x = foldr (\x y -> if f x then [x]++y else y) [] x