xs = [1..3]
ys = [4..6]

x :: Maybe Int
x = lookup 3 $ zip xs ys

y :: Maybe Int 
y = lookup 2 $ zip xs ys

summed :: Maybe Int
summed = sum <$> ((,) <$> x <*> y)