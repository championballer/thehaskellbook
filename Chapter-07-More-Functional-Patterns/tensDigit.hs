-- implementing tensDigit using divMod --

tensDigit :: Integral a => a -> a
tensDigit x = snd $ divMod (fst $ divMod x 10) 10