{-# LANGUAGE NoMonomorphismRestriction #-}

quotientExtracter :: Integral a => a -> a
quotientExtracter x = fst $ divMod x 10

f = quotientExtracter

hundredsDigit :: Integral a => a -> a
hundredsDigit x = snd $ divMod ((f.f) x) 10