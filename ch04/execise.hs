module Exercise where
import Data.Char (digitToInt)

-- 1. Ssfety List functions.
safeHead :: [a] -> Maybe a
safeHead (x:_) = Just x
safeHead _     = Nothing

safeTail :: [a] -> Maybe a
safeTail (x:[]) = Just x
safeTail (_:xs) = safeTail xs
safeTail _      = Nothing

safeLast :: [a] -> Maybe [a]
safeLast (_:xs) = Just xs
safeLast _      = Nothing

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit xs = Just (safeInit' xs) where
  safeInit' (_:[])  = []
  safeInit' (x:xs') = x : safeInit' xs'
  safeInit' _       = []

-- 2. 
splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith f xs = head' xs : [tail' xs]
  where
    head' (x:xs')
      | f x       = x:head' xs'
      | otherwise = []
    head' []      = []
    tail' (x:xs')
      | not (f x) = x:tail' xs'
      | otherwise = tail' xs'
    tail' []      = []

-- 3.
  -- InteractWith.hs

-- 4.
convRowCol :: String -> String
convRowCol = unlines . convRowCol' . lines
  where convRowCol' xs
          | null xs        = []
          | null (head xs) = []
          | otherwise      = map head xs : convRowCol' (map tail xs)

asInt :: String -> Int
asInt = foldr step 0
  where
    step '+' b = b
    step '-' b = -1 * b
    step a b   = digitToInt a * 10 + b


groupBy' :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy' f = foldr g [[]]
  where g a [[]] = [[a]]
        g a (x:xs) | f (head x) a = ((a:x):xs)
                   | otherwise    = ([a]:(x:xs))
