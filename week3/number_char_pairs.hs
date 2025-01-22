charsDivisibleBy :: Integer -> [Char]
charsDivisibleBy n = 
    [['a'..'z'] !! fromIntegral x | x <- [0..25], x `mod` n == 0]


--charsProductOf :: [Integer] -> [Char]
--charsProductOf ns