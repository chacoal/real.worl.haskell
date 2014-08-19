module Fold where

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step zero (x:xs) = foldl' step (step zero x) xs
foldl' _    zero []     = zero


myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr step []
  where step x ys | p x       = x : ys
                  | otherwise = ys

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr step []
  where step x ys = f x : ys

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f z xs = foldr step id xs z
  where step x g a = g (f a x)

{-
  foldl (+) 0 (1:2:3:[])
            == foldl (+) (0 + 1)                (2:3:[])
            == foldl (+) ((0 + 1) + 2)          (3:[])
            == foldl (+) (((0 + 1) + 2) + 3)    []
            ==           (((0 + 1) + 2) + 3)
-}
