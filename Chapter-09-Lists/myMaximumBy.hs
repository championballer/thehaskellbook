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