import Data.Monoid

data Optional a = Nada
              | Only a
              deriving (Eq, Show)

instance Monoid a => Monoid (Optional a) where
 mempty = Nada
 mappend (Only x) (Only y) = Only (mappend x y)
 mappend (Only x) _ = Only x
 mappend _ (Only x) = Only x
 mappend _ _ = Nada