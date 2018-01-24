--Heres a re definition of the && function using the same formate as || from the WorkSheet_3Extra.hs file

-- We don't import '&&' from the prelude, so that we can 
-- define our own version

import Prelude hiding ((&&), gcd)


-- The following line declares the && operator (which we are about to
-- re-define) to be right associative and to have precedence 3. This
-- is necessary in order for expressions such as False && x > 2 to be
-- valid (e.g. it sets the precedence of && to be lower than >). 

infixr 3  &&

-- A naive re-implementation of the Prelude operator &&
(&&) :: Bool -> Bool -> Bool
(&&) True True    = True
False && True   = False
True && False   = False
False && False  = False

-- An alternative re-implementation
--(&&) :: Bool -> Bool -> Bool
--True && True = True
--_ && _ = False

-- Another alternative re-implementation
--(&&) :: Bool -> Bool -> Bool
--False && _ =  False
--True && a = a

--A note, && is an operator and so would be defined above like the 3 bottom lines
-- Functions however dont need brackets and can be written like the thre lines after the 1st

fact :: Int -> Int 
fact n 
    | n == 0    = 1
    | n > 0     = n * fact (n - 1)
    | otherwise = error "factorials not defined for negative ints"

mult :: Int -> Int -> Int
mult n m 
    | n == 0        = 0
    | n > 0         = m + mult (n - 1) m 

divide :: Int -> Int -> Int
divide n m
    | n < m         = 0
    | otherwise     = 1 + divide (n - m) m

--Ex 2
exOr :: Bool -> Bool -> Bool
True `exOr` True = False
exOr True False = True
exOr False True = True
exOr False False = False

--Ex 3 -> Always true???
ifThenElse :: Bool -> Int -> Int -> Int 
ifThenElse True a b = a
ifThenElse False a b = b

--Ex 4
daysInMonth :: Int -> Int
daysInMonth 1 = 31
daysInMonth 2 = 28
daysInMonth 3 = 31
daysInMonth 4 = 30
daysInMonth 5 = 31
daysInMonth 6 = 30
daysInMonth 7 = 31
daysInMonth 8 = 31
daysInMonth 9 = 30
daysInMonth 10 = 31
daysInMonth 11 = 30
daysInMonth 12 = 31

--Ex 5
sumNumbers :: Int -> Int
sumNumbers n
    |n > 0 = n + sumNumbers(n - 1)
    |otherwise = 0

--Ex 6
sumSquares :: Int -> Int
sumSquares n
    |n > 0 = n ^ 2 + sumSquares(n - 1)
    |otherwise = 0

--Ex 7
power :: Int -> Int -> Int
power n p
    |n > 0 && p > 1 = mult n (power n (p-1))
    |otherwise = n

--Ex 8
sumFromTo :: Int -> Int -> Int
sumFromTo x y
    |y < x = 0
    |otherwise = y + sumFromTo x (y-1)

--Ex 9
--gcd :: Int -> Int -> Int
--gcd 

--Ex 10
--intSquareRoot :: Int -> Int
--intSquareRoot x 
--   |x < 0 = 0
--   |otherwise = x