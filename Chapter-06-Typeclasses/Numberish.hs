class Numberish a where 
 fromNumber :: Integer -> a
 toNumber :: a -> Integer
 defaultNumber :: a

newtype Age = Age Integer
            deriving (Eq, Show)

instance Numberish Age where 
 fromNumber x = (Age x)
 toNumber (Age x) = x
 defaultNumber = Age 65

newtype Year = Year Integer
             deriving (Eq, Show)

instance Numberish Year where
 fromNumber y = (Year y)
 toNumber (Year y) = y
 defaultNumber = Year 1947