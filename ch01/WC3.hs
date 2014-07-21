main :: IO ()
main = interact $ (++ "\n") . show . charCount
  where charCount = length . unwords . words
