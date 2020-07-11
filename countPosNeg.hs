-- DEFINISI DAN SPESIFIKASI
countPosNeg :: [Int] -> (Int,Int)

-- REALISASI
countPosNeg l =
	if length l == 0 then (0,0)
	else 
		let (pos,neg) = countPosNeg (tail l)
		in
			if (head l > 0) then (1+pos,neg)
			else if (head l<0) then (pos,neg+1)
			else (pos,neg)