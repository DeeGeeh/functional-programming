onlyDigits :: String -> Bool

onlyDigits [] = False --CASE: Empty input
onlyDigits str =
    all (`elem` ['0'..'9']) str