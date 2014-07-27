pluralise :: String -> [Int] -> [String]
pluralise word = map plural
  where plural 0 = "no " ++ word ++ "s"
        plural 1 = "one " ++ word
        plural n = show n ++ " " ++ word ++ "s"
