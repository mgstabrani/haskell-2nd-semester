-- DEFINISI DAN SPESIFIKASI
delElement :: Int -> [Int] -> [Int]
{- delElement x l mengembalikan list l dengan elemen x yang telah dihapus dari l.
 Jika x bukan elemen l, maka fungsi mengembalikan l semula.
 Prekondisi: elemen l unik (setiap elemen hanya muncul 1 kali). -}

-- REALISASI
delElement x l =
	if length l == 0 then []
	else if (head l) == x then (tail l)
	else [head l] ++ (delElement x (tail l))

-- APLIKASI
-- delElement 2 [1,2,3,4]
-- [1,3,4]