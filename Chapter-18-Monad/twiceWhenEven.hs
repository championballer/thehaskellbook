twiceWhenEven :: [Integer] -> [Integer]
twiceWhenEven xs = do
 x <- xs
 if even x
    then [x*x,x*x]
    else [x*x]

twiceWhenEven' :: [Integer] -> [Integer]
twiceWhenEven' xs = do
 x <- xs
 if even x
    then [x*x,x*x]
    else []

--printListElements :: [Integer] -> IO()
printListElements xs = do
    x <- xs
    [2 * x]