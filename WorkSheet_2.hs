--Worksheet 2: Intro to Functional Programming II

--Ex 1
absolute :: Int -> Int
absolute x 
    | x < 0 = (-1 * x) 
    | otherwise = x

--Ex 2
sign :: Int -> Int
sign x
    | x > 0 = 1
    | x < 0 = (-1)
    | otherwise = 0

--Ex 3
howManyEqual :: Int -> Int -> Int -> Int
howManyEqual x y z
    | x == y && x == z = 3
    | x == y || y == z || x == z = 2
    | otherwise = 0

--Ex 4
sumDiagonalLengths :: Float -> Float -> Float -> Float
sumDiagonalLengths a b c = diag a + diag b + diag c
    where
    diag x = sqrt(x^2 + x^2)

--Ex 5
taxiFare :: Int -> Float
taxiFare dist
    | absolute(dist) <= 10 = (fare dist 0.50)
    | otherwise = (fare (dist-10) 0.30) + 5.00 --Add five for the base 10km journey
    where
    fare dist cost = cost * fromIntegral(dist) + 2.20

--Ex 6
howManyAboveAverage :: Int -> Int -> Int -> Int
howManyAboveAverage x y z
    | y > avg x y z && x > avg x y z = 2
    | y > avg x y z && z > avg x y z = 2
    | x > avg x y z && z > avg x y z = 2
    | otherwise = 1
    where
    avg x y z = ((x+y+z) `quot` 3)

--Ex 7
validDate :: Int -> Int -> Bool
validDate d m
    | m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12 && d > 0 && d <= 31 = True
    | m == 4 || m == 6 || m == 9 || m == 11 && d > 0 && d <= 30  = True
    | m == 2  && d > 0 && d <= 28  = True
    | otherwise = False

--Ex 8
daysInMonth :: Int -> Int -> Int
daysInMonth m y
    | m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12 = 31
    | m == 4 || m == 6 || m == 9 || m == 11 = 30
    | y `mod` 4 == 0 && m == 2 = 29
    | otherwise = 28 