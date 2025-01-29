nextIsGreater :: [Integer] -> [Integer]
nextIsGreater [] = [] -- Empty input
nextIsGreater [_] = [] -- List size 1
nextIsGreater (x:y:xs)
    | x < y     = x : nextIsGreater(y:xs) 
    | otherwise = nextIsGreater(y:xs)