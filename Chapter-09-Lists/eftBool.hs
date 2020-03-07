eftBool :: Bool -> Bool -> [Bool]
eftBool x y 
 | x > y = []
 | x == y = [x]
 | x < y = (x : (eftBool (succ x) y) )