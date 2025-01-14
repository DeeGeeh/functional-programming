points :: Integer -> [(Integer, Integer)]

points x = [(a,b) | a <- [-abs x..abs x], b <- [-abs x..abs x], abs a + abs b <= x]