-- DEFINISI DAN SPESIFIKASI
kaliList :: Int -> [Int] -> [Int]
kaliList n l =
	if length l == 0 then []
	else if length l == 1 then [n*(head l)]
	else  [(head l) * n] ++ (kaliList n (tail l))