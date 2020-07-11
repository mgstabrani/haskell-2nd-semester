-- DEFINISI DAN SPESIFIKASI
isOrdered :: [Int] -> Bool

-- REALISASI
isOrdered l = 
	if length l == 2 then 
		if head l > head (tail l) then False
		else True
	else if length l == 1 then True	
	else 
		if head l > head (tail l) then False
		else isOrdered (tail l)
			