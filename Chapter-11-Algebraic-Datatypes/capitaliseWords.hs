import Data.Char

capitaliseWords :: String -> [(String, String)]
capitaliseWords x = map capitalise $ words x

capitalise :: String -> (String,String)
capitalise w@(x:xs) = (w,toUpper x : xs)