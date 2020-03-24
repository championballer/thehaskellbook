f :: Integer -> Maybe Integer
f 0 = Nothing
f n = Just n

g :: Integer -> Maybe Integer
g i 
 | even i = Just (i+1)
 | otherwise = Nothing

h :: Integer -> Maybe String
h i = Just ("10191" ++ show i)

doSomething' n = do
 a <- f n
 b <- g a
 c <- h b
 return (a,b,c)