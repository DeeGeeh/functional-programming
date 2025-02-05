notAppearsInOther :: String -> String -> Int
notNumberCount :: String -> Int
distance1 :: String -> String -> Float
distance2 :: String -> String -> Float

-- Helper functions

-- Count how many chars in s1 dont show up in s2
notAppearsInOther s1 s2 =
    length (filter (`notElem` s2) s1)

-- Count how many chars are NOT NUMERIC (0..9)
notNumberCount [] = 0
notNumberCount s =
    length (filter (`notElem` ['0'..'9']) s)

-- Actual functions
distance1 [] [] = 0
distance1 s1 s2
    | totalLength == 0 = 0
    | otherwise = fromIntegral (notAppearsInOther s1 s2 + notAppearsInOther s2 s1) / fromIntegral (length s1 + length s2)
  where 
    totalLength = length s1 + length s2

distance2 [] [] = 0
distance2 s1 s2 
    | totalLength == 0 = 0
    | otherwise = fromIntegral (notNumberCount s1 + notNumberCount s2) / fromIntegral (length s1 + length s2)
  where 
    totalLength = length s1 + length s2