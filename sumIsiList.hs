-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int

-- REALISASI
sumIsiList l = 
	if length l == 0 then 0
	else (sumIsiList (tail l)) + head l