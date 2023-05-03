module Main where
-- 与えられたリストの偶数番目の要素を全て足し合わせる関数を作成する

list = [1,2,3,4,5]
pickEven :: [a] -> [a]
pickEven = go 0
  where
    go i (x:xs)
      | i `mod` 2 == 1 = x : go (i+1) xs
      | otherwise      = go (i+1) xs
    go _ []            = []

main :: IO ()
main = do
    print $ sum $ pickEven list