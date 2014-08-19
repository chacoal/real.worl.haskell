module Exp () where

import Data.List

myDumbExample :: String -> Char
myDumbExample xs = if length xs > 0
                   then head xs
                   else 'Z'

mySmartExample xs = if not $ null xs
                    then head xs
                    else 'Z'

myOtherEample (x:_) = x
myOtherEample []    = 'Z'
