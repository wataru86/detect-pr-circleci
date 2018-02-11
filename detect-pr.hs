import System.Environment

main = do
  value <- getEnv "CIRCLE_PULL_REQUEST"
  putStrLn value
