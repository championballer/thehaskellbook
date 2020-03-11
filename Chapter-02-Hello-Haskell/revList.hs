-- reverse list -- 

module ReverseList where

rev :: [a] -> [a]
rev [] = []
rev x = (last x) : rev (init x)

main :: IO()
main = do
 print $ rev [1,2,3,4]