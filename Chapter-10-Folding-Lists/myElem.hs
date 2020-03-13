myElem :: Eq a => a -> [a] -> Bool
myElem a xs = foldr (chk) False xs
 where chk = check a

check :: Eq a => a -> a -> Bool -> Bool
check a x y = (x == a) || y