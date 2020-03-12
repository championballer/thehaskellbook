data DayOfWeek = Mon | Tues | Wed | Thurs | Fri | Sat | Sun

data Date = Date DayOfWeek Int

instance Eq DayOfWeek where 
 (==) Mon Mon = True
 (==) Tues Tues = True
 (==) Wed Wed = True
 (==) Thurs Thurs = True
 (==) Fri Fri = True
 (==) _ _ = False

instance Eq Date where
 (==) (Date day date) (Date day' date') = (day==day') && (date==date')