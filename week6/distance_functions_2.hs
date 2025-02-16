distance3 :: String -> String -> Float
distanceFilter :: (String -> String -> Float) -> Float -> String -> [String] -> [String]

distance3 x y = fromIntegral $ abs $ length x - length y

distanceFilter f d s ss = 
    filter (\x -> f s x <= d) ss