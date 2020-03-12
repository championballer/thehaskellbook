data DayOfWeek = Mon
               | Tues
               | Wed
               | Thurs
               | Fri
               | Sat
               | Sun
               deriving (Show)

-- Making Eq instance agree with order instance of DayOfWeek
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