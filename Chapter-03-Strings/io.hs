module IO where

-- add' :: (Num a) => a -> a ->  IO ()
-- add' x y = x + y

-- pString :: String -> IO()
-- pString x = x

-- pString "Hello world"

main = do  
    foo <- putStrLn "Hello, what's your name?"  
    name <- getLine  
    putStrLn ("Hey " ++ name ++ ", you rock!")  
