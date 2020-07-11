-- DEFINIIS DAN SPESIFIKASI
pangkat :: Int -> Int -> Int 
{- input dua bilangan integer a dan b, menghasilkan a^b, dengan a>0 dan b>=0-}

-- REALISASI
pangkat a b = 
	if b == 0 then 1
	else a*(pangkat a (b-1))