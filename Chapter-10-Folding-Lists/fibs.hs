fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x
fibsf x = take x fibs
fibss = takeWhile (<100) fibs