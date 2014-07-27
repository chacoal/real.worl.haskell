mySecond :: [a] -> a
mySecond xs = if null (tail xs)
              then error "list too short"
              else head (tail xs)

safeSecond :: [a] -> Maybe a
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))

-- goodSafeSecond :: [a] -> Maybe a
-- goodSafeSecond [] = Nothing
-- goodSafeSecond (_:xs)
--   | null xs   = Nothing
--   | otherwise = Just (head xs)


tidySecond :: [a] -> Maybe a

tidySecond (_:x:_) = Just x
tidySecond _       = Nothing
