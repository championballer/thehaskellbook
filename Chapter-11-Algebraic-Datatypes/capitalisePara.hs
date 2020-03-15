import Data.Char

capitaliseParagraph :: String -> String
capitaliseParagraph x = take (length x - 1) $foldr (\x y -> x ++ ". " ++ y) [] $ map ((capitalise').(dropWhile (==' '))) $ split' x

split' :: String -> [String]
split' "" = []
split' x = [initial] ++ recursive
 where initial = takeWhile (/='.') x
       recursive = split' $ drop 1 $ dropWhile (/='.') x  

capitalise' :: String -> String
capitalise' (x:xs) = toUpper x:xs