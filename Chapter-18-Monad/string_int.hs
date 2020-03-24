stringInt :: String -> Maybe Int
stringInt x
 | x == "Shiv" = Just 7
 | otherwise = Nothing

stringIntEither :: String -> Either String Int
stringIntEither x
 | x == "Shiv" = Right 4
 | otherwise = Left "Hello"

sample :: Int -> String
sample x = "3"


main :: IO()
main = do
 print $ Left "Sup?" >>= stringIntEither
 print $ Right "Shiv" >>= stringIntEither
 print $ Right "Nothing" >>= stringIntEither
 print $ Just "Shiv" >>= stringInt