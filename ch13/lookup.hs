mylookup :: Eq a => a -> [(a, b)] -> Maybe b
mylookup _ [] = Nothing
mylookup key ((thiskey, thisval):rest) =
  if key == thiskey
  then Just thisval
  else mylookup key rest
