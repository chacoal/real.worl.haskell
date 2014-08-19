import Data.List

isInAny needle haystack = any inSequence haystack
  where inSequence s = needle `isInfixOf` s

isInAny2 needle haystack = any (\s -> needle `isInfixOf` s) haystack

isinAny3 needle haystack = any (needle `isInfixOf`) haystack
