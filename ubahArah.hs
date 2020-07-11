-- DEFINISI DAN SPESIFIKASI
ubahArah :: Int -> Int -> Int
{- input dari terdiri dari dua buah integer, integer pertama bernilai dari 0-359, integer kedua (-359)-359, dan menghasilkan bilangan 0-359 -}

-- REALISASI
ubahArah s r = 
	if (s+r) > 0 && (s+r) <360 then (s+r)
	else if (s+r)>359 then (s+r)-360
	else 360 - abs(s+r)

--APLIKASI 
-- ubahArah 0 359
-- 359