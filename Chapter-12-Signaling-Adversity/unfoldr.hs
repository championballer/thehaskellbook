myUnfoldr :: (b->Maybe(a,b)) -> b -> [a]
myUnfoldr f x = t ++ myUnfoldr f t
 where t = extract (f x)

extract :: Maybe (a,b) -> a
extract Just x y = [x]
extract Nothing = []

sample :: (Eq a, Num a) => a -> Maybe (a,a)
sample b
 | b == 0 = Nothing
 | otherwise = Just (b,b+1)
