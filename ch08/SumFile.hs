main = do
  contnets <- getContents
  print (sumFile contents)
    where sumFile = sum . map read . words
