module Main where
import Text.Read
import Control.Monad.Trans.Maybe ( MaybeT(..) )

-- https://zenn.dev/tobi462/articles/4ae7658d126054 参考
addIO = do
  a <- MaybeT $ fmap readMaybe getLine
  b <- MaybeT $ fmap readMaybe getLine
  return $ a + b

main :: IO ()
main = do
  result <- runMaybeT addIO
  print result