f x = Just x

g :: Integer -> Maybe Integer
g i = Just i

doSomething a = do
    a <- g 5 
    print a