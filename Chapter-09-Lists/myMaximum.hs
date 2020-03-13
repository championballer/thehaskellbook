myMaximumBy :: (a->a->Ordering)->[a]->a
myMaximumBy _ (x:[]) = x
myMaximumBy f (x:y:[]) = cmpElement f x y
myMaximumBy f (x:xs) = cmpElement f x y
 where y = myMaximumBy f xs

cmpElement :: (a->a->Ordering)->a->a->a
cmpElement f x y
 | f x y == GT = x
 | f x y == LT = y
 | f x y == EQ = x

myMaximum :: Ord a => [a] -> a
myMaximum x = myMaximumBy compare x