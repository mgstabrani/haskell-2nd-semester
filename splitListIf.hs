-- DEFINISI DAN SPESIFIKASI
splitListIf :: [Int] -> (Int -> Bool) -> ([Int],[Int])
isGenap :: Int -> Bool
gtThan5 :: Int -> Bool
isPositif :: Int -> Bool

-- REALISASI
splitListIf l f = 
	if length l == 0 then ([],[])
	else 
		let (l1,l2) = splitListIf (tail l) f
		in
			if (f (head l) == True) then ([head l] ++ l1,l2)
			else (l1,[head l] ++ l2)
isGenap x =
	if mod x 2 == 0 then True
	else False
gtThan5 x =
	if x > 5 then True
	else False
isPositif x =
	if x >= 0 then True
	else False