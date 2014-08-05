foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step zero (x:xs) = foldl' step (step zero x) xs
foldl' _    zero []     = zero


myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr step []
  where step x ys | p x       = x : ys
                  | otherwise = ys
