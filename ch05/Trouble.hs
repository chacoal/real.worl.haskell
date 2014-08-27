module Trb where

import Data.Char

upcaseFirst :: String ->  String
upcaseFirst (c:cs) = toUpper c : cs
upcaseFirst []     = ""

camelCase :: String ->  String
camelCase xs = concatMap upcaseFirst (words xs)


