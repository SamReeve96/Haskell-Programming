--Worksheet 1: Intro to Functional Programming

--Ex 1
timesTen :: Int -> Int
timesTen x = 10 * x

--Ex 2
sumThree :: Int -> Int -> Int -> Int
sumThree x y z = x + y + z

--Ex 3
areaOfCircle :: Float -> Float
areaOfCircle r = pi * (r ^ 2)

--Ex 4
volumeOfCylinder :: Float -> Float -> Float
volumeOfCylinder r h = areaOfCircle r * h

--Ex 5
distance :: Float -> Float -> Float -> Float -> Float
distance xOne yOne xTwo yTwo = sqrt((yOne - yTwo)^2 + (xOne - xTwo)^2)

--Ex 6
threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent x y z = x /= y && y /= z && x /= z

--Ex 7
divisibleBy :: Int -> Int -> Bool
divisibleBy x y = x `mod` y == 0

--Ex 8
isEven :: Int -> Bool
isEven x = divisibleBy x 2

--Ex 9
averageThree :: Int -> Int -> Int -> Float
averageThree x y z = fromIntegral(x + y + z) / 3

--Ex 10
absolute :: Int -> Int
absolute x = if x < 0 then (-1 * x) else x