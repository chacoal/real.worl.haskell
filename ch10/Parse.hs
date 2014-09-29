module Parse where

type Parse = Parse

instance Functor Parse where
  fmap f parser = parser ==> \result ->
                              identity (f result)
