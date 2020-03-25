import Control.Monad
import System.Exit
import Data.Char

palindrome :: IO()
palindrome = forever $ do
    line1 <- getLine
    if line1==""
    then exitSuccess
    else 
        case (line1 == reverse line1) of
        True -> putStrLn "It's a palindrome!"
        False -> putStrLn "Nope!"

mutline = lower.rempunc.concat.words
palindrome' :: IO()
palindrome' = forever $ do
    line <- getLine
    if line == ""
    then exitSuccess
    else case ((mutline line) == reverse (mutline line)) of
         True -> putStrLn "It's a palindrome"
         False -> putStrLn "Nope!"

rempunc :: String -> String
rempunc "" = ""
rempunc (x:xs)
 | isPunctuation x = rempunc xs
 | otherwise = x:rempunc xs

lower :: String -> String
lower "" = ""
lower (x:xs) = toLower x : lower xs
