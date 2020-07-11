-- DEFINISI DAN SPESIFIKASI
isPrima :: Int -> Bool

-- REALISASI
isPrima x = 
	if x == 2 || x == 3 || x == 5 || x == 7 then True
	else if mod x 2 == 0 || mod x 3 == 0 || mod x 5 == 0 || mod x 7 == 0 then False
	else True
	