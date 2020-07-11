-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]

-- REALISASI
filterGanjil l = 
	if length l == 0 then []
	else 
		if mod (head l) 2 == 0 then filterGanjil (tail l)
		else  [head l] ++  (filterGanjil (tail l))