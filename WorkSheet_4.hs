import Data.Char

type StudentMark = (String, Int)

betterStudent :: StudentMark -> StudentMark -> String
betterStudent (s1,m1) (s2,m2) 
    | m1 >= m2          = s1
    | otherwise         = s2

marks:: [StudentMark] -> [Int]
marks stMarks = [ mk | (st,mk) <- stMarks ]

pass :: [StudentMark] -> [String]
pass stMarks = [ st | (st,mk) <- stMarks, mk >= 40 ]

-- An example list of student marks
testData :: [StudentMark]
testData = [("John", 53), ("Sam", 16), ("Kate", 85), ("Jill", 65),
            ("Bill", 37), ("Amy", 22), ("Jack", 41), ("Sue", 71)]

addPairs :: [(Int,Int)] -> [Int]
addPairs pairList = [ i+j | (i,j) <- pairList ]

minAndMax :: Int -> Int -> (Int,Int)
minAndMax x y 
    | x <= y            = (x,y)
    | otherwise         = (y,x)

--Ex 1
sumDifference :: Int -> Int -> (Int,Int)
sumDifference x y = (x+y, x-y)

--Ex 2 --Note how to output char
grade :: StudentMark -> Char
grade (x,y)
    | y > 69 = 'A'
    | y > 59 = 'B'
    | y > 49 = 'C'
    | y > 39 = 'D'
    |otherwise = 'F'

--Ex 3
capMark :: StudentMark -> StudentMark
capMark (x,y)
    | y > 40 = (x,40)
    |otherwise = (x,y)

--Ex 4
firstNumbers :: Int -> [Int]
firstNumbers n = [1 .. n]

--Ex 5
firstSquares :: Int -> [Int]
firstSquares n = [ i * i | i <- [1 .. n]]

--Ex 6
capitalise :: String -> String
capitalise x = [toUpper i | i <- x]

--Ex 7
onlyDigits :: String -> String
onlyDigits x = [i | i <- x, isDigit i == True]

--Ex 8
capMarks :: [StudentMark] -> [StudentMark]
capMarks x = [capMark(n,m) | (n,m) <- x]

--Ex 9
gradeStudents :: [StudentMark] -> [(String, Char)]
gradeStudents x = [ (n,grade(n,s)) | (n,s) <- x]

--Ex 10 FIX
--duplicate :: String -> Int -> String
--duplicate x y
--    | y < 0 = x
--   |otherwise = x ++ duplicate(x y-1)

--Ex 11
divisors :: Int -> [Int]
divisors n
    | n < 0 = []
    |otherwise = [x | x <- [1 .. (n)], n `rem` x == 0]