countTheBeforeVowel :: String -> Integer
countTheBeforeVowel s = count $ words s

count :: [String] -> Integer
count [] = 0
count (x:[]) = 0
count (x1:x2:xs)
 | x1 == "the" && ((x2!!0) `elem` "aeiou") = 1 + (count xs)
 | otherwise = count xs