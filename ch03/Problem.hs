data List a = Cons a (List a)
            | Nil
              deriving (Show)

problem1 :: List a -> [a]
problem1 (Cons b c) = b:problem1 c
problem1 Nil        = []



problem21 :: [a] -> Int
problem21 [] = 0
problem21 xs = ln xs 0
  where
    ln [] a      = a
    ln (_:xs') a = ln xs' (a + 1)


problem23 :: [Double] -> Maybe Double
problem23 [] = Nothing
problem23 xs = let len = fromIntegral (problem21 xs) :: Double
               in Just (ava xs len)
  where
    ava []     _  = 0
    ava (x:xs') ln = x / ln + ava xs' ln


problem24 :: [a] -> [a]
problem24 xs = xs ++ rv xs
  where
    rv []     = []
    rv (x:xs') = rv xs' ++ [x]

