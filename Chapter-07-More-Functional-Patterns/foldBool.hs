foldBool :: a -> a -> Bool -> a
foldBool x y z 
 | z = x
 | not z = y

foldBool' :: a -> a -> Bool -> a
foldBool' x y z = 
 case z of
  True -> x
  False -> y