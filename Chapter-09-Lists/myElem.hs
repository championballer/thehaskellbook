myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = (x==y) || myElem y xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' x xs = any (x==) xs