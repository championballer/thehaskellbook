squishMap :: (a->[b])->[a]->[b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain x = squishMap (\x->x) x 