#!/usr/bin/env stack
-- stack --resolver lts-10.5 script

module Main where
import System.Environment

--import Data.Maybe

main :: IO ()
main = do
  pullRequestUrl <- lookupEnv "CIRCLE_PULL_REQUEST"
  maybe (putStrLn "This build is not PR.") main' pullRequestUrl

main' :: String -> IO ()
main' pullRequestUrl = do
  putStrLn ("PR: " ++ pullRequestUrl)
  
