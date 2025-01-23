

charsDivisibleBy :: Integer -> [Char]
charsDivisibleBy n
    | n <= 0    = []
    | otherwise = [['a'..'z'] !! (fromIntegral x - 1) | x <- [1..26], x `mod` n == 0]


charsProductOf :: [Integer] -> [Char]
charsProductOf ns = 
    [['a'..'z'] !! (fromIntegral x - 1) | x <- [1..26],
    any (\(a,b) -> a * b == x) [(p,q) | p <- ns, q <- ns, p /= q]]