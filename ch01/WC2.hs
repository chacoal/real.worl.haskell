main :: IO ()
main = interact $ (++ "\n") . show . wordCount
  where wordCount = length . words
