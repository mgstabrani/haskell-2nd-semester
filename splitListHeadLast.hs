-- DEFINISI DAN SPESIFIKASI
splitListHeadLast :: [Int] -> Int ->([Int],[Int])

-- REALISASI
splitListHeadLast l n = 
	if length l == 0 then ([],[])
	else if n == 1 then ([head l],tail l)
	else 
		let (l1,l2) = (splitListHeadLast (tail l) (n-1))
		in 
			([head l] ++ l1,l2)
