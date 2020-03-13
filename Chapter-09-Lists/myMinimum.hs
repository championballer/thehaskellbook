myMinimumBy :: (a->a->Ordering)->[a]->a
myMinimumBy _ (x:[]) = x
myMinimumBy f (x:y:[]) = cmpElement f x y
myMinimumBy f (x:xs) = cmpElement f x y
 where y = myMinimumBy f xs

cmpElement :: (a->a->Ordering)->a->a->a
cmpElement f x y
 | f x y == GT = y
 | f x y == LT = x
 | f x y == EQ = x

myMinimum :: Ord a => [a] -> a
myMinimum x = myMinimumBy compare x