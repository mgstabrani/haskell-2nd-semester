-- DEFINISI DAN SPESIFIKASI
getSmallest :: [Int] -> Int
{- mengembalikan nilai minimum dari sebuah list -}

-- REALISASI
getSmallest  l = 
	if length l == 1 then head l 
	else 
		if (head l) < (getSmallest (tail l)) then head l 
		else (getSmallest (tail l))

-- APLIKASI 
-- getSmallest [1,2,3]
-- 1