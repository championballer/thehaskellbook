import Data.Char 

capitalCaseRecursive :: String -> String
capitalCaseRecursive [] = []
capitalCaseRecursive (x:xs) = toUpper x : capitalCaseRecursive xs

capitalHead :: String -> Char
capitalHead = toUpper.head 
