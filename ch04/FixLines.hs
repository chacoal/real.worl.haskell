module FixLines (fixLines) where

import SplitLines

fixLines :: String -> String
fixLines = unlines . splitLines


