myAny :: (a->Bool)->[a]->Bool
myAny f x = foldr (\x y -> (f x) || y) False x