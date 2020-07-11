mergeList :: [Int] -> [Int] -> [Int]
mergeList l1 l2 =
	if length l1 == 0 && length l2 == 0 then []
	else if length l1 == 0 then l2
	else if length l2 == 0 then l1
	else
		let li = mergeList (tail l1) (tail l2)
		in
			if head l1 < head l2 then
				if (head (tail l1)) < head l2 then (mergeList (tail l1) l2)
				else  [head l1] ++ [head l2] ++ li
			else 
				if (head (tail l2)) < head l1 then (mergeList l1 (tail l2))
				else  [head l2] ++ [head l1] ++ li
