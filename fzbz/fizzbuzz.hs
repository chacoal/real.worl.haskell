module Main(main) where

import Control.Monad

fzbz :: Int -> String
fzbz a | a `rem` 15 == 0 = "FizzBuzz"
       | a `rem` 3  == 0 = "Fizz"
       | a `rem` 5  == 0 = "Buzz"
       | otherwise       = show a

main :: IO ()
main = do
  x <- readLn
  forM_ [1..x] $ \a -> putStrLn $ fzbz a
