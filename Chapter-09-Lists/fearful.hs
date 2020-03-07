myWords :: [Char] -> [[Char]]
myWords [] = []
myWords x = ([t1] ++ t2)
 where t1 = takeWhile (/=' ') x
       t2 = myWords $ drop 1 (dropWhile (/=' ') x)
