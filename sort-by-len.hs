module Main where
-- 与えられたリストを要素の長さで昇順にソートする関数を作成する
import Data.List

list = [[1,2,3], [1], [1,2]]

main :: IO ()
main = do
    print $ sortOn length list