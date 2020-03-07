firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myBreaker :: String -> Char -> [String]
myBreaker [] _ = []
myBreaker x c = ([t1] ++ t2)
 where t1 = takeWhile (/=c) x
       t2 = myBreaker (drop 1 $ dropWhile (/=c) x) c