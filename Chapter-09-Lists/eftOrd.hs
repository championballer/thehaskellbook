eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y 
 | x > y = []
 | x == y = [x]
 | x < y = x : (eftOrd (succ x) y)