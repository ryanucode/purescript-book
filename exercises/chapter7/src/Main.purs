module Main where

import Prelude
import Control.Monad.Eff.Console (logShow)
import Data.Traversable


data Tree a = Leaf | Branch (Tree a) a (Tree a)

instance functorTree :: Functor (Tree a) where
  map _ Leaf = Leaf
  map f (Branch l a r) = Branch (map f l) (f a) (map f r)

instance traverseTree :: Traversable (Tree a) where
  traverse _ Leaf = pure Leaf
  traverse f (Branch l a r) = Branch (traverse f l) f a (traverse f r)

  sequence 

main = do
  logShow 2
