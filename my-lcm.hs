module Main where
-- 与えられた2つの整数の最小公倍数を計算する関数を作成する。

a = 8
b = 12

myGcd a 0 = a
myGcd a b = myGcd b $ mod a b

myLcm a b = a * b `div` myGcd a b

main = do
  print $ myLcm a b