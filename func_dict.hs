import Data.Char
-- calc Faculty rekursiv

fakul1 n = if (n == 0)
    then 1
    else n * fakul1(n-1)

-- Or

fakul0 n | n == 0 = 1
    | otherwise = fakul0(n - 1)

-- Faculty iterative Akkumolator 

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

getre = (\xs -> getre (tail xs) ++ [head xs])

inc :: Num a => [a] -> [a]
inc xs = foldl go (\_ _ acc -> acc) xs id (+ 1) []
    where go run x f g acc = run g f (f x: acc)


-- check for palindrom
checkPalindrom xs = if (getrev xs == xs) then True
                else False

-- unterliste 
unterListe:: Int -> Int -> [a] -> [a]
unterListe a b [] = []
unterListe 0 0 xs = []
unterListe a b xs = drop a ( take b xs)

-- (a)

--iterative
potenzIter :: Integer -> Integer -> Integer
potenzIter n 0 = 1
potenzIter 0 m = 0
potenzIter n m = potenAkk n m n
        where potenAkk n m temp = if (m <= 1) then temp 
                else potenAkk n (m - 1) (temp * n)


-- recursive
potenzRec :: Integer -> Integer -> Integer
potenzRec n 0 = 1
potenzRec 0 m = 0
potenzRec n m = n * potenzRec n (m - 1)

-- recursive

--(b)

-- recursive
pPotenzRec::(Integral a, Integral a ) => a -> a -> a 
pPotenzRec n 0 = 1
pPotenzRec 0 m = 0
pPotenzRec n m = n * pPotenzRec n (m - 1)

--Iterative
pPotenzIter::(Integral a, Integral a ) => a -> a -> a 
pPotenzIter n 0 = 1
pPotenzIter 0 m = 0
pPotenzIter n m = potenAkk n m n
        where potenAkk n m temp = if (m <= 1) then temp 
                else potenAkk n (m - 1) (temp * n)

--(c)

quadrat::(Integral a, Integral a ) => a -> a
quadrat n = pPotenzRec n 2

drittenPotenz::(Integral a, Integral a ) => a -> a
drittenPotenz n = pPotenzRec n 3

--(d)

--Integral (Int, Integer)



-- fibonacci sequence
fib::Int->[Int]
fib 0 = [0]
fib 1 = [1, 0]
fib n = (head (fib (n-1)) + head (fib (n-2))) : fib (n-1)

-- list of paar to paar of list
listeZuPaar :: [(String,Int)] -> ([String] ,[Int])
--listeZuPaar xs = (map fst xs, map snd xs)
listeZuPaar [] = error "List is Empty"
listeZuPaar xs = ([a | (a, _) <- xs], [b | (_, b) <- xs])


--



fun1:: Int -> Int -> Bool
fun1 = (<)

fun2:: [Int]-> [Int]
fun2 = (++[1..10])

fun3:: Int -> Int 
fun3 x = (\x -> x + 1) x
 
fu x y = (== 3) (x + y)



fo::(Foldable t, Integral b) => b -> t b -> b
fo = foldr (-)


f::(Integral a) => [a] -> [a]
f [] = f [1]
f xs = xs

fi::(Integral a) => a -> a
fi = (+2)

fa::(Integral a) => a -> a
fa x = (\x -> x) x

map' ::(a -> b) -> [a] -> [b]
map' f [] = []
map' f xs = foldr (\x akk -> f x : akk) [] xs

take_while'':: Int -> [Int] -> [Int]
take_while'' 0 xs =[]
take_while'' a (x:xs) = x:take_while'' (a - 1) xs

map'' ::(a -> b) -> [a] -> [b]
map'' _ [] = []
map'' f (x:xs) = f x : map' f xs

take_while :: (a -> Bool) -> [a] -> [a]
take_while a [] = []
take_while a (x:xs) = if a x
            then x : take_while a xs
            else []

take_while' :: (a -> Bool) -> [a] -> [a]
take_while' a = foldr (\x ys -> if a x then x:ys else []) []


editext x = foldr (++) "" (editit (words x))
            where
            editit [] = []
            editit (x:xs) = makeUpper x : editit xs
                where
                    makeUpper (x:xs) | isLower x = toUpper x : xs

                    
