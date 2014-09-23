module Main(main) where

main :: IO ()
main = do
  line <- getLine
  let x = read line
  print (x + x)
