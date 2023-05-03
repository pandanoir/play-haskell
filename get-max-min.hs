module Main where
import Data.List (minimum, maximum)
-- 与えられたリストの最大値と最小値を計算する関数を作成する。

list = [1,2,3,4,5]

minMax xs = (minimum xs, maximum xs)

main = do
  print $ minMax lis
