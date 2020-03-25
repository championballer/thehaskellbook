ifLeft :: Either a b -> [a]
ifLeft (Left x) = [x]
ifLeft _ = []

ifRight :: Either a b -> [b]
ifRight (Right x) = [x]
ifRight _  = []

lefts' :: [Either a b] -> [a]
lefts' = foldr ((++).(ifLeft)) [] 

rights' :: [Either a b] -> [b]
rights' = foldr ((++).(ifRight)) []

partitionEithers' :: [Either a b] -> ([a],[b])
partitionEithers' x = (lefts' x,rights' x)
