distance3 :: String -> String -> Float
distanceFilter :: (String -> String -> Float) -> Float -> String -> [String] -> [String]

distance3 x y = fromIntegral $ abs $ length x - length y

