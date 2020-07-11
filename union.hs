-- DEFINISI DAN SPEFIKASI
union :: [Int] -> [Int] -> [Int]
isMember :: Int -> [Int] -> Bool

-- REALISASI
isMember x l =
	if length l == 0 then False
	else 
		if x == head l then True
		else (isMember x (tail l))
union l1 l2 =
	if length l1 == 0 then l2
	else if length l2 == 0 then l1
	else 
		if (isMember (head l2) l1) then (union l1 (tail l2))
		else (union l1 (tail l2)) ++ [head l2]

-- APLIKASI
-- union [1,2,3] [2,3,4]
-- [1,2,3,4]