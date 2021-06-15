-- @013 fibonacci --
fib 1 = 0 -- caso base
fib 2 = 1 -- caso base
fib x = fib (x - 1) + fib (x - 2)

-- @018 frequencia --
frequencia::Int -> [Int] -> Int
frequencia x [] = 0 -- condição de parada para a recursão
frequencia x (u:us) | x==u = 1 + frequencia (x) (us)
                    | otherwise = frequencia (x) (us)

-- @019 unico --
unica::Int -> [Int] -> Bool
unica (x) (us) = if (frequencia x us) == 1
                 then True else False  

-- @020 maioresQue --
maioresQue::Int -> [Int] -> [Int]
maioresQue x us = [u | u<-us, u > x] 

-- @021 concatena --
concatena::[Int] -> [Int] -> [Int]
concatena [] [] = [] -- caso base
concatena xs us = xs++us

-- @025 menores --
menores::Int -> [Int] -> [Int]
menores n u = [x | x <- u, (length (maioresQue x u)) >= ((length u) - n]

-- @026 alter --
alter::Int -> [Int]
alter 0 = [0]
alter a = alter(c - 1)++ [c , (-c)]
    where c = a

-- @027 reverso --
reverso::[Int] -> [Int]
reverso [] = [] -- caso base
reverso [a] = [a] -- caso base
reverso xs = (last xs) : reverso (init xs)

-- @029 intercal - intercalar duas listas --

intercal::[Int] -> [Int] -> [Int]
intercal [] [] = [] -- caso base
intercal x [] = x -- caso base
intercal [] u = u -- caso base
intercal (x:xs) (us) = x:intercal (us) (xs)

-- @032 sequencia --
sequencia::Int -> Int -> [Int]
sequencia n m = [m,(m+1)..(m+n-1)]

-- @037 rotEsq --
rotEsq::Int -> [Char] -> [Char]
rotEsq n (u:us) | n > 0 = rotEsq (n-1) (us++[u])
                | otherwise = [u]++us

-- @038 rotDir --
rotDir::Int -> [Char] -> [Char]
rotDir n (us)   | n > 0 = rotDir (n-1) ([(last us)] ++ (init us))
                | otherwise = us
