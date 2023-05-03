-- https://zenn.dev/tobi462/articles/4ae7658d126054 参考
module Main where
import Text.Read (readMaybe)
import Control.Monad.Trans.Maybe ( MaybeT(..) )
import Control.Monad.Trans.Class ( lift )

readInt = readMaybe

addIO = do
    lift $ putStrLn "enter number"
    a <- MaybeT $ fmap readInt getLine
    lift $ putStrLn "enter number"
    b <- MaybeT $ fmap readInt getLine
    return $ a + b

main :: IO ()
main = do
    result <- runMaybeT addIO
    print result