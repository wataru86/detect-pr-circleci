#!/usr/bin/env stack
-- stack --resolver lts-10.5 script

module Main where
import System.Environment
import Turtle
--import Data.Maybe

main :: IO ()
main = do
  setEnv "CIRCLE_PULL_REQUEST" "test"
  pullRequestUrl <- lookupEnv "CIRCLE_PULL_REQUEST"
  maybe (putStrLn "This build is not PR.") main' pullRequestUrl

main' :: String -> IO ()
main' pullRequestUrl = do
  putStrLn ("PR: " ++ pullRequestUrl)
  p <-  pwd
  view $ ls p
  view $ shell "curl" empty
