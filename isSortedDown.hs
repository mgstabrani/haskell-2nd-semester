-- DEFINSI DAN SPESIFIKASI
isSortedDown :: [Int] -> Bool

-- REALISASI
isSortedDown l =
	if length l == 1 then True
	else 
		if head l > head (tail l) then (isSortedDown (tail l))
		else False