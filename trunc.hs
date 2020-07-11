-- DEFINISI DAN SPESIFIKASI
trunc :: [Int] -> Int -> [Int]

-- REALISASI
trunc l i =
	if i == 1 then [head l]
	else [head l] ++ (trunc (tail l) (i-1))
	
	