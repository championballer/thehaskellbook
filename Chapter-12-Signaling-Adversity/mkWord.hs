countVowels :: String -> Integer
countVowels "" = 0
countVowels (x:xs)
 | elem x "aeiou" = 1 + last
 | otherwise = last
 where last = countVowels xs

newtype Word' = Word' String
              deriving (Eq, Show)

vowels = "aeiou"

mkWord :: String -> Maybe Word'
mkWord s = 
    if v > (fromIntegral(length s) - v) 
        then Nothing
        else Just (Word' s)
    where v = countVowels s