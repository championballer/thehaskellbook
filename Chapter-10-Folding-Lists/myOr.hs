myOr :: [Bool] -> Bool
myOr x = foldr (||) False x