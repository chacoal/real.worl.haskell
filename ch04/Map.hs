import Data.Char (toUpper)

square :: [Double] -> [Double]
square (x:xs) = x * x : square xs
square []     = []

upperCase :: String -> String
upperCase (x:xs) = toUpper x : upperCase xs
upperCase []     = []

square2 :: [Double] -> [Double]
square2 = map (\a->a*a)

upperCase2 :: String -> String
upperCase2 = map toUpper
