class TooMany a where 
    tooMany :: a -> Bool

instance TooMany Int where
    tooMany x = x > 42