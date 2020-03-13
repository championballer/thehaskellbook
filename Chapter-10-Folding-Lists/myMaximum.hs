myMaximumBy :: (a->a->Ordering)->[a]->a
myMaximumBy ord x = foldr1 (\x y -> if ord x y == GT then x else y) x