-- DEFINISI DAN SPESIFIKASI
countIf :: [Int] -> (Int -> Bool) -> Int
isGanjil :: Int -> Bool

-- REALISASI
countIf l f =
	if length l == 0 then 0
	else 
		if (f (head l) == True) then (1 + countIf (tail l) f)
		else countIf (tail l) f

isGanjil x =
	if mod x 2 == 0 then False
	else True

isGenap x = not (isGanjil x )

isPrima x = 
	if mod x 2 == 0 || mod x 3 == 0 || mod x 5 == 0 || mod x 7 == 0 || x /= 2 || x /= 3|| x /= 5|| x/= 7 then False
	else True