module Main where
-- 与えられたリストから偶数だけを取り出し、その合計を計算する関数を作成する。

list = [1,2,3,4,5]
main = do
  print $ sum $ filter even list 
