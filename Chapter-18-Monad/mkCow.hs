data Cow = Cow {
      name   :: String
    , age    :: Int
    , weight :: Int
} deriving (Eq, Show)

noEmpty :: String -> Maybe String
noEmpty "" = Nothing
noEmpty str = Just str

noNegative :: Int -> Maybe Int
noNegative n
 | n >= 0 = Just n
 | otherwise = Nothing

weightCheck :: Cow -> Maybe Cow
weightCheck c =
    let w = weight c
        n = name c
    in if n == "Bess" && w > 499
        then Nothing
        else Just c

mkSphericalCow' :: String -> Int -> Int -> Maybe Cow
mkSphericalCow' name' age' weight' = do
    nammy <- noEmpty name'
    aggy <- noNegative age'
    weighty <- noNegative weight'
    weightCheck (Cow nammy aggy weighty)

mkSphericalCow'' :: String -> Int -> Int -> Maybe Cow
mkSphericalCow'' name' age' weight' = 
    noEmpty name' >>= 
        \nammy -> noNegative age' >>= 
            \aggy -> noNegative weight' >>= 
                \weighty ->
                weightCheck (Cow nammy aggy weighty)

