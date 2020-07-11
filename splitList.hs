splitList :: [Int] -> ([Int],[Int])
splitList l1 =
	if length l1 == 0  then ([],[])
	else
		let (l2,l3) = splitList (tail l1)
		in
			if head l1 >= 0 then ([head l1] ++ l2, l3)
			
			else (l2,[head l1] ++ l3)
			
-- (splitList (tail l1), [head l1] ++ splitList (tail l1))	