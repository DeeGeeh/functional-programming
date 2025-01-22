credits :: (Char, Integer) -> (Char, Integer) -> Integer
credits ('s', 14) _ = 14 -- Rule 1
credits _ ('s', 14) = 14 -- Rule 1
credits (s1, v1) (s2, v2)
    | s1 == s2 && abs (v1 - v2) == 1 = 8 -- Rule 2
    | v1 == v2 = 6 -- Rule 3
    | abs (v1 - v2) == 1 = 4 -- Rule 4
    | s1 == s2 = 2 -- Rule 5
    | otherwise = 0 -- Rule 6