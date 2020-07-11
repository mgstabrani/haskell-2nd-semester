-- DEFINISI DAN SPESIFIKASI
sumKelipatanOfX :: Int -> Int -> Int -> Int

-- REALISASI
sumKelipatanOfX a b x =
	if a>b then 0
	else 
		if mod a x == 0 then a + sumKelipatanOfX (a+1) b x 
		else sumKelipatanOfX (a+1) b x 

-- APLIKASI
-- sumKelipatanOfX 1 10 2
-- 30

