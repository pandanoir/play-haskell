module Main where
-- 与えられたリストの要素を全て2乗し、新しいリストを作成する関数を作成する。

list = [1,2,3,4,5]
pow = map (\x -> x * x)
main = do
  print $ pow list 
