headOrLast :: [String] -> Char -> [String]

headOrLast strings c = [str | str <- strings, not (null str), head str == c || last str == c]
