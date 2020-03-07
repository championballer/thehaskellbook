eftChar :: Char -> Char -> [Char]
eftChar x y
    | x > y = []
    | x == y = [x]
    | x < y = x : (eftChar (succ x) y)