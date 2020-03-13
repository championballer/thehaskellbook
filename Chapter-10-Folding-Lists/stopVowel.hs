stops = "pbtdkg"
vowel = "aeiou"

l1 = [(x,y,z) | x <- stops, y <- vowel, z <-stops]
l2 = [('p',y,z) | y <- vowel, z <- stops]