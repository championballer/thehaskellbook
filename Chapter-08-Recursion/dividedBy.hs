data DividedResult = Result Integer | DividedByZero deriving (Show)

-- getMayBeValue :: Maybe a -> a
-- getMayBeValue (Just x) = x

getResult :: DividedResult -> Integer
getResult (Result x) = x

dividedBy :: (Ord a, Num a) => a -> a -> DividedResult
dividedBy x y 
 | y == 0 = DividedByZero
 | x < y = Result 0
 | x == y = Result 1
 | x > y = Result ((+) 1 $ getResult $ dividedBy (x-y) y)