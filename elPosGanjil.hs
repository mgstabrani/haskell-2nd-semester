-- DEFINISI DAN SPESIFIKASI
elPosGanjil :: [Int] -> [Int]

-- REALISASI
-- elPosGanjil l =
--	if length l == 1 then l
--	else if mod (length l) 2 == 0 then (elPosGanjil (init l)) 
--	else 
--		[head l] ++ (elPosGanjil (tail(tail l)))

elPosGanjil l =
	if length l == 0 then []
	else 
		let l1 = elPosGanjil (tail (tail l))
		in
			if length l == 1 then [head l]
			else [head l] ++ l1			