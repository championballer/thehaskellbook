data DayOfWeek = Mon | Tues | Wed | Thur | Fri | Sat | Sun deriving (Show)
data DayOfWeek' = Mon' | Tues' | Wed' | Thur' | Fri' | Sat' | Sun' deriving (Show,Eq,Ord)

instance Eq DayOfWeek where
 (==) Fri Fri = True
 (==) Fri _ = False
 (==) _ Fri = False
 (==) _ _ = True

instance Ord DayOfWeek where
 compare Fri Fri = EQ
 compare Fri _ = GT
 compare _ Fri = LT
 compare _ _ = EQ

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