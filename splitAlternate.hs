splitAlternate :: [Int] -> ([Int],[Int])
splitAlternate l =
	if length l == 0 then ([],[])
	else 
		let (l1,l2) = splitAlternate (tail(tail l))
		in 
			if length l == 1 then ([head l],[])
			else ([head l]++l1, [head (tail l)] ++ l2)