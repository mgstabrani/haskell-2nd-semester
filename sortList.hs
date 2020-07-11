-- DEFINISI DAN SPESIFIKASI
sortList :: [Int] -> [Int]
maxList :: [Int] -> Int 
delElement :: [Int] -> Int ->  [Int]


-- REALISASI
sortList l = 
	if length l == 1 then l
	else (sortList (delElement l (maxList l)))  ++ [maxList l] 
maxList l =
	if length l == 1 then head l
	else 
		let max = maxList (tail l)
		in
			if (head l) > max then head l 
			else max
delElement l x = 
	if length l == 0 then []
	else 
		if head l == x then delElement (tail l) x
		else [head l] ++ delElement (tail l) x

		