import Data.List (intersperse)

notThe :: String -> Maybe String
notThe s
 | s == "the" = Nothing
 | otherwise = Just s

replaceThe :: String -> String
replaceThe s = concat $ intersperse " " $ replace $ words s

replace :: [String] -> [String]
replace [] = []
replace (x:xs)
 | x == "the" = "a":replace xs
 | otherwise = x : replace xs