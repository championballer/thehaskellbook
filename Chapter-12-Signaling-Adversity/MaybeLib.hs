{-# LANGUAGE RankNTypes #-}

isJust :: Maybe a -> Bool
isJust Nothing = False
isJust (Just x) = True

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing _ = False

maybee :: b -> (a->b) -> Maybe a -> b
maybee b _ Nothing = b
maybee b f (Just x) = f x

fromMaybe :: a -> Maybe a -> a
fromMaybe b Nothing = maybee b id Nothing
fromMaybe b x = maybee b id x

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe [a] = Just a

maybeToList :: Maybe a -> [a]
maybeToList Nothing = []
maybeToList (Just x) = [x]

catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (Nothing : xs) = catMaybes xs
catMaybes (Just x : xs) = x : catMaybes xs

flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe [] = Just []
flipMaybe (Nothing:xs) = Nothing
flipMaybe (Just x:xs) = fmap (x:) (flipMaybe xs)
