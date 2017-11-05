--Worksheet 2: Intro to Functional Programming II

--Ex 1
absolute :: Int -> Int
absolute x 
    | x < 0 = (-1 * x) 
    | otherwise = x

--Ex 2
sign :: Int -> Int
sign x
    | x < 0 = 1
    | x > 0 = (-1)
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
        | otherwise = (fare (dist-10) 0.50) + 5.00
        where
        fare dist cost = cost * fromIntegral(dist) + 2.20

