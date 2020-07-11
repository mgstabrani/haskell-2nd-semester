-- DEFINISI DAN SPESIFIKASI
delAllX :: [Int] -> Int -> ([Int],Int)

-- REALISASI
delAllX l x =
	if length l == 0 then ([],0)
	else 
		let (l1,n) = delAllX (tail l) x
		in
			if (head l) == x then (l1,n+1)
			else ([head l] ++ l1,n)