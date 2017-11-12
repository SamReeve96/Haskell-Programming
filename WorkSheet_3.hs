--Ex 1

--Heres a re definition of the && function using the same formate as || from the WorkSheet_3Extra.hs file

-- We don't import '&&' from the prelude, so that we can 
-- define our own version

import Prelude hiding ((&&)) 

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


--Ex 2
exOr :: Bool -> Bool -> Bool
True `exOr` True = False
exOr True False = True
exOr False True = True
exOr False False = True

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
--sumNumbers :: Int -> Int