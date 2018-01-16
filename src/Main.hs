{-# LANGUAGE OverloadedStrings #-}
module Main where

import System.Environment (getArgs)

import qualified Data.Text as T
import qualified Data.Text.IO as TIO

subst :: T.Text -> T.Text
subst = T.replace "#!/bin/bash" "#!/usr/bin/env bash"

main :: IO ()
main = do
  args <- getArgs
  contents <- TIO.readFile $ head args
  TIO.putStrLn $ subst contents
