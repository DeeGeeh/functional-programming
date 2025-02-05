gap :: (Char, Char) -> Integer -> String -> Integer

gap _ _ "" = 0
gap (c1, c2) g s@(x:xs)
    | length s <= fromIntegral g = 0
    | x == c1 && drop (fromIntegral g + 1) s /= []
      && head (drop ( fromIntegral g + 1) s) == c2 = 1 + gap (c1, c2) g xs
    | otherwise = gap (c1, c2) g xs