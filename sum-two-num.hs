module Main where
import Text.Read (readMaybe)
import Data.Foldable

toInt :: (String -> Maybe Int)
toInt x = readMaybe x ::Maybe Int

-- ユーザーから2つの整数を入力してもらい、その2つの整数の和を計算するプログラムを作成する。
main = do
  putStrLn "enter number"
  num1 <- getLine
  putStrLn "enter number"
  num2 <- getLine
  forM_ (do num1<-toInt num1; num2<- toInt num2; return $ num1 + num2) print