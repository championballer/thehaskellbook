-- Reverse word wise for string "Curry is awesome" -- 

module Reverse where

s = "Curry is awesome"

rvrs :: [Char]
rvrs = s1 ++ " " ++ s2 ++ " " ++ s3
 where s1 = drop 9 s
       s2 = take 2 $ drop 6 s
       s3 = take 5 s

main :: IO()
main = do
 print rvrs