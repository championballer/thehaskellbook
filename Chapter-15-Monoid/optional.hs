import Data.Monoid

data Optional a = Nada
              | Only a
              deriving (Eq, Show)

instance Monoid a => Monoid (Optional a) where
 mempty = Nada

instance Semigroup a => Semigroup (Optional a) where
 (<>) (Only x) (Only y) = Only (x <> y)
 (<>) (Only x) _ = Only x
 (<>) _ (Only x) = Only x
 (<>) _ _ = Nada
