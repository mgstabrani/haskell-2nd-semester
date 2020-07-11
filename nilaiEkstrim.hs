-- DEFINISI DAN SPESIFIKASI 
nilaiEkstrim :: [Int] ->(Int,Int)

-- REALISASI
nilaiEkstrim l = 
	if length l == 1 then (head l, head l)
	else 
		let (max,min) = nilaiEkstrim (tail l)
		in
			if head l > max then (head l, min)
			else (max, head l)

-- APLIKASI
-- nilaiEkstrim [2,1,19,23]
-- (23,1)