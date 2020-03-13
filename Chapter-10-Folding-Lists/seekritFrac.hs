{-# LANGUAGE MonomorphismRestriction #-}

seekritFunc x = n/d
 where n = fromIntegral(sum $ map length $ words x)
       d = fromIntegral(length.words $ x)