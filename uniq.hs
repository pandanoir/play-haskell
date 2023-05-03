module Main where
-- 与えられたリストの最大値と最小値を計算する関数を作成する。

import Data.List

indexed = go 0
  where
    go i (x:xs) = (i, x) : go (i + 1) xs
    go _ _      = []

list = [1,2,1,1,2,2,3,4,5]

uniq l = map snd $ filter (\(i,x) ->
  case elemIndex x l of Just x -> x == i; Nothing -> False
  ) $ indexed l

main = do
  print $ uniq list