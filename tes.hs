isDateValid :: Int -> Int -> Int -> Bool
nilaitengah :: (Float, Float, Float) -> Float
luasLingkaran :: Float -> Float







isDateValid d m y = 
	if y `mod` 4 /= 0 ||  y == 0 then
		if m == 2 then
			if d>28 then False
			else True
		else if  m == 4 || m == 6 || m == 9 || m == 11 then
			if d > 30 then False
			else True
		else True
	else True


nilaitengah (a, b, c) = 
	let 	maxac = (a+c+abs(a-c))/2
		maxab = (a+b+abs(a-b))/2
		minac = (a+c-abs(a-c))/2
		minab = (a+b-abs(a-b))/2
	in	
		let 	max = (maxac+maxab+abs(maxac-maxab))/2
			min = (minac+minab-abs(minac-minab))/2
		in 	a + b + c - min - max		
	
luasLingkaran r = 
	let 	pi = 3.14
	
	in	pi*r*r

main = do

	