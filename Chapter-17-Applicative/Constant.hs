newtype Constant a b = Constant {getConstant :: a}
                     deriving (Eq, Ord, Show)

instance Functor (Constant a) where
 fmap _ (Constant {getConstant = a}) = (Constant {getConstant = a})

instance Monoid a => Applicative (Constant a) where
 pure b = Constant {getConstant = mempty} 
 (Constant {getConstant = a} ) <*> (Constant {getConstant = a'} ) = Constant {getConstant = (a <> a')}