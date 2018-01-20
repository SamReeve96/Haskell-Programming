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
        | otherwise = (fare (dist-10) 0.30) + 5.00
        where
        fare dist cost = cost * fromIntegral(dist) + 2.20

--Ex 6
--howManyAboveAverage :: Int -> Int -> Int -> Int
--howManyAboveAverage x y z
--        | average(x y z) > x && average(x y z) > y && average(x y z) > z = 3
--        | average(x y z) > x && average(x y z) > y || average(x y z) > x && average(x y z) > z || average(x y z) > y && average(x y z) > z = 2
--        | otherwise = 1
--        where
--        average a b c = (a+b+c)/3

--Ex 7
-- validDate :: Int -> Int -> Bool
-- validDate day month
--       | (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day <= 31 = true
--        | (month == 4 || month == 6 || month == 9 || month == 11) && day <= 30 = true
--        | month == 2 && day <= 28 = true
--        |otherwise = false
   

--Ex 8
