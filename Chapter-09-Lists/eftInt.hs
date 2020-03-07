eftInt :: Int -> Int -> [Int]
eftInt x y 
 | x > y = []
 | x == y = [x]
 | x < y = (x : (eftInt (succ x) y))