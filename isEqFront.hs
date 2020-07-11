-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool

-- REALISASI
isEqFront l1 l2 =
	if length l1 == 1  then 
		if head l1 == head l2 then True
		else False
	else 
		if head l1 /= head l2  then False
		else isEqFront (tail l1) (tail l2)