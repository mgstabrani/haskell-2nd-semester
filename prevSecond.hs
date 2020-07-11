-- DEFINISI DAN REALISASI
prevSecond :: Int -> Int -> Int -> (Int,Int,Int)

-- REALISASI
prevSecond j m d =
	if j == 0 && m == 0 && d == 0 then (23,59,59)
	else if m == 0 && d == 0 then (j-1,59,59)
	else if d == 0 then (j,m-1,59)
	else (j,m,d-1)