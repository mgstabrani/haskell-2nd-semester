-- DEFINISI DAN SPESIFIKASI
inverse :: [Int] -> [Int]
-- menginvers suatu list

-- REALISASI
inverse l = 
	if length l == 0 then []
	else (inverse(tail l)) ++ [head l]

-- APLIKASI
-- inverse [1,2,3]
-- [3,2,1]