countVowels :: String -> Integer
countVowels "" = 0
countVowels (x:xs)
 | elem x "aeiou" = 1 + last
 | otherwise = last
 where last = countVowels xs