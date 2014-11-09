comprehensive xs ys = [(x, y) | x <- xs, y <- ys]

blockyDo xs ys = do
  x <- xs
  y <- ys
  return (x, y)

blockyPlain xs ys =
  xs >>=
  \x -> ys >>=
  \y -> return (x, y)

blockyPlainReloaded xs ys =
  concat (map (\x ->
               concat (map (\y ->
                            return (x, y))
                       ys))
          xs)
