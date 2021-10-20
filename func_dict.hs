
-- calc Faculty rekursiv

fakul1 n = if (n == 0)
    then 1
    else n * fakul1(n-1)

-- Or

fakul0 n | n == 0 = 1
    | otherwise = fakul0(n - 1)

-- Faculty iterative using Akkumolator 

fakul2 n = fakulAkku n 1
    where fakulAkku n akku = if (n == 0) then akku else fakulAkku (n-1) (n * akku)


-- fibonacci recursion

fiborek 0 = 0
fiborek 1 = 1
fiborek n = fiborek(n - 1) + fiborek(n - 2)


-- fibonacci iterativ
fiboiter 0 = 0
fiboiter 1 = 1
fiboiter n = fibAkku n 1 0
        where
        fibAkku n res temp  = if (n==1) then res
                    else fibAkku (n-1) (res+temp) res


--checksum

sum2 [] = error "empty"
sum2 (x:[]) = x
sum2 (x:xs) = x + (sum2 xs)



-- check if an element exist in a given list
elem2 :: (Eq a) => a -> [a] -> Bool
elem2 _ [] = False
elem2 e (x:xs) =  (e == x) || (elem2 e xs)
-------------------------
elem3 :: (Eq a) => a -> [a] -> Bool
elem3 e [] = False
elem3 e (x:xs) = if (e == x) then True
    else elem3 e xs

-- remove duplicate
nub2 :: (Eq a) => [a] -> [a]
nub2 [] = []
nub2 (x:xs) = if (x `elem2` xs)
    then nub2 xs 
    else x: nub2 (xs)

-- check if the list is sorted
isAsc2 :: [Int] -> Bool
isAsc2 [] = True
isAsc2 [x] = True
isAsc2 (x:y:xs) = (x <= y) && isAsc2 (y:xs)


-- faculty iterative
s n = fac2 n 1
    where fac2 n akc = if (n == 0) then akc else fac2(n - 1) (akc * n)



-- checksum from to - recursion
sum4 x y = if (x >= y)
    then x
    else x + sum4 (x + 1) y

--checksum from to - iterative
sum5 x y = sumakk x 0
        where sumakk x akk = if (x > y) then akk else sumakk (x + 1) (x + akk)

-- checksum -list
sum6 [] = 0
sum6 (x:xs) = x + sum6(xs)

-- check length from to
length6 x y = if (x >= y) 
    then y
    else length6 (x + 1) y

-- calc middvalue 
midd1 x y = fromIntegral (sum4 x y) / fromIntegral (length6 x y)

-- split Integer number tolist
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

-- checksum of an integer number
checksum x = if (digs x == []) then 0 
    else sum6 (digs x)


--bonbon function
kaufen x = kaufHelper x 10 0
    where kaufHelper rest currpreis bezahlt = if (currpreis > rest || currpreis >= 100) 
                                    then bezahlt 
                                    else kaufHelper (rest - currpreis) (currpreis + 10) (bezahlt + currpreis)

-- check if an element is in a given list -- returns a bool value
elem5 :: (Eq a) => a -> [a] -> Bool
elem5 a [] = False
elem5 a (x:xs) = if (a == x) then True
            else elem5 a (xs)


-- remove diplucates from a given list

nub5 :: (Eq a) => [a] -> [a]
nub5 [] = []
nub5 (x:xs) = if (x `elem5` xs) then nub5 xs else x: nub5 xs

head6 [] = error "List is Empty :("
head6 (x:[]) = x
head6 (x:xs) = x

isAsc5 :: [Int] -> Bool
isAsc5 [] = error "List is Empty :("
isAsc5 (x:[]) = True
isAsc5 (x:xs) = if (x < head6 xs) then isAsc5 (xs)
                else False

           
--sublist
sublist 0 m xs = take m xs
sublist n m (x:xs) = sublist (n + 1) m xs

getrev xs = if null xs then xs else getrev (tail xs) ++ [head xs]

-- check for palindrom
checkPalindrom xs = if (getrev xs == xs) then True
                else False




-- unterliste 
unterListe:: Int -> Int -> [a] -> [a]
unterListe a b [] = []
unterListe 0 0 xs = []
unterListe a b xs = drop a ( take b xs)

-- fibonacci sequence
fib::Int->[Int]
fib 0 = [0]
fib 1 = [1, 0]
fib n = (head (fib (n-1)) + head (fib (n-2))) : fib (n-1)

-- list of paar to paar of list
listeZuPaar :: [(String,Int)] -> ([String] ,[Int])
listeZuPaar [] = error "List is Empty"
listeZuPaar xs = ([a | (a, _) <- xs], [b | (_, b) <- xs])

