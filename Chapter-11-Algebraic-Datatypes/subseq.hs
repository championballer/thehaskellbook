isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf w@(x:xs) (y:ys)
 | x == y  = isSubseqOf xs ys
 | otherwise = isSubseqOf w ys