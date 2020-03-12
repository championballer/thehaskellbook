data StringOrInt = TisAnInt Int
                 | TisAString String
                 deriving (Show)

instance Eq StringOrInt where
 (==) (TisAnInt i1) (TisAnInt i2) = (i1 == i2)
 (==) (TisAString s1) (TisAString s2) = (s1==s2)
 (==) _ _ = False