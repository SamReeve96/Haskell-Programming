{- Week6.hs
 This module illustrates the use of functions as values
-}

import Data.Char

twice :: (Int -> Int) -> Int -> Int
twice f x = f (f x)

multiply :: Int -> Int -> Int
multiply x y = x * y

double = multiply 2

doubleAll = map (*2)
areDigits = map isDigit

keepPositive = filter (>0)
keepDigits = filter isDigit

--addUp = foldr (+) 0
--myConcat = foldr (++) []

--Ex1
mult10 = map (*10)

--Ex2
onlyLowerCase = filter (isLower)

--Ex3
--orAll = foldr (||) False

--Ex4
-- the full stop passes the map to the foldr function (f.g) x = f (g x)
sumSquares = foldr (+) (0) . map (^2)

--Ex5
zeroToTen = filter (<10) . filter (>0)

--Ex6
squareRoots = map (sqrt) . filter (>0)

--Ex7
countBetween a b = length . filter (>a) . filter (<b)

--Ex 8
alwaysPositive a b = filter(>0) . map (a)

--Ex 9
--productSquareRoots a = filter(>0) . map(sqrt) . foldr (*) 0

--Ex 10
--removeFirst :: [Int] -> [Int]
--removeFirst y (x:xs)
--    |x == [] = []
--    |y . x == True = removeFirst y xs
--    |otherwise = x : removeFirst y (xs)

