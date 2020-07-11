-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
isGanjil x = 
	if x == 1 then True
	else if x == 2 then False
	else isGanjil (x-2)