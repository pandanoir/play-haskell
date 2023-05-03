module Main where
-- 与えられたリストの最大値と最小値を計算する関数を作成する。

list = [1,2,3,4,5]

range:: [Integer] -> (Integer, Integer)
range [] = (0,0)
range (x:xs) = foldl (\(max,min) x -> (if max < x then x else max, if min > x then x else min)) (x, x) xs

main = do
  print $ range list