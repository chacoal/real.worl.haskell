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

fold' _    zero []     = zero
fold' step zero (x:xs) =
  let new = step zero x
  in new `seq` fold' step new xs


hiddenInside x y = someFunc (x `seq` y)

hiddenByLet x y z = let a = x `seq` someFunc y
                    in anotherFunc a z


onTheOutside x y = x `seq` someFunc y

chained x y z = x `seq` y `seq` someFunc z

badExpression step zero (x:xs) =
  seq (step zero x)
      (badExpression step (step zero x) xs)


someFunc a = undefined
anotherFunc a z = undefined


strictPair (a,b) = a `seq` (a, b)

strictList (x:xs) = x `seq` x : strictList xs
strictList []     = []
