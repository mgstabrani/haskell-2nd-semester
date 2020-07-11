-- DEFINISI DAN SPESIFIKASI
isAllGanjil :: [Int] -> Bool
{- mengembalikan boolean yang bernilai True apabila list kosong/seluruh elemen list ganjil -}



-- REALISASI
isAllGanjil l = 
	if length l == 0 then True
	else 
		if mod (head l) 2 == 0 then (isAllGanjil (tail l))
		else False

-- APLIKASI 
-- isAllGanjil [1,2,3]
-- False

