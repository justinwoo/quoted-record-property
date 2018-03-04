module Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

type A = { "apple-pie" :: String }

a :: A
a = { "apple-pie": "yes" }

b :: String
b = a."apple-pie"

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log b -- yes
  log {"hello-world": "yup"}."hello-world" -- yup
  log {"🍌": "indeed"}."🍌" -- indeed
  log {"酔生夢死": "absolutely"}."酔生夢死" -- absolutely
