{- Week5.hs
 This file illustrates list patterns and recursion over lists.
-}

import Prelude hiding (fst, snd, head, tail, sum, concat, reverse, zip)

-- Definitions of the prelude functions fst and snd

fst (x,_)       = x
snd (_,y)       = y

-- Definitions of the prelude functions head and tail

head (x:_)      = x
tail (_:xs)     = xs

absFirst :: [Int] -> Int
absFirst []     = -1
absFirst (x:xs) = abs x

sum :: [Int] -> Int 
sum []     = 0
sum (x:xs) =   x + sum xs

doubleAll :: [Int] -> [Int]
doubleAll []      = []
doubleAll (x:xs)  = 2*x : doubleAll xs

concat :: [[a]] -> [a]
concat []         = []
concat (x:xs)     = x ++ concat xs

reverse :: [a] -> [a]
reverse []      = []
reverse (x:xs)  = reverse xs ++ [x]

zip :: [a] -> [b] -> [(a,b)]
zip (x:xs) (y:ys)  = (x,y) : zip xs ys
zip _ _            = []

--Ex 1 --Head gets the first value of a list
headPlusOne :: [Int] -> Int
headPlusOne x = (head x) + 1 

--Ex 2
duplicateHead :: [a] -> [a]
duplicateHead [] = []
duplicateHead (x:xs) = x:x:xs

--Ex 3
rotate :: [a] -> [a]
rotate [] = []
rotate (x:y:xs) = (y:x:xs)

--Ex 4
listLength :: [a] -> Int
listLength [] = 0
listLength (x:xs) = 1 + listLength(xs)

--Ex 5
multAll :: [Int] -> Int
multAll [] = 1
multAll (x:xs) = x * multAll(xs)

--Ex 6
andAll :: [Bool] -> Bool
andAll [] = True
andAll (x:xs) = x && andAll(xs)

--Ex 7
countElems :: Int -> [Int] -> Int
countElems _ [] = 0
countElems y (x:xs) 
    |y==x = 1 + countElems y xs
    |otherwise = countElems y xs

--Ex 8
removeAll :: Int -> [Int] -> [Int]
removeAll _ [] = []
removeAll y (x:xs)
    |y==x = removeAll y xs
    |otherwise = x : removeAll y xs

--For Ex 9
type StudentMark = (String, Int)

--Ex 9
listMarks :: String -> [StudentMark] -> [Int]
listMarks y [] = []
listMarks y ((z,w):xs)
    |y==z = w : listMarks y xs
    |otherwise = listMarks y xs

--Ex 10
prefix :: [Int] -> [Int] -> Bool
prefix [] _ = True
prefix _ [] = False --if left list has more elements left than the right
prefix (x:xs) (y:ys)
    |x/=y = False 
    |otherwise = prefix xs ys

--Ex 11 FIX
--subSequence :: [Int] -> [Int] -> Bool
--subSequence [] _ = True
--subSequence (x:xs) (y:ys)
--    |x/=y && ys==[] = False
--    |x/=y = prefix [x] ys
--    |otherwise = prefix xs [y]