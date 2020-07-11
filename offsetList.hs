-- DEFINISI DAN SPESIFIKASI
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
pd :: Float -> Float
p1 :: Float -> Float
p2 :: Float -> Float

-- REALISASI
offsetList f g a b =
	if a > b then []
	else 
		[f (a)] ++ offsetList f g (g (a)) b
pd x = x 
p1 x = x+1
p2 x = x+2
