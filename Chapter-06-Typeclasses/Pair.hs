data Pair a = Pair a a 
            deriving (Show)

instance Eq a => Eq (Pair a) where
 (==) (Pair f1 s1) (Pair f2 s2) = (f1==f2) && (s1==s2) 