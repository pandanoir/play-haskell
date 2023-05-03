module Main where
-- 与えられたリストを一定の幅で区切り、二次元のリストに変換する関数を作成する
import Data.List
import Data.Ord
list = [1,2,3,4,5]

chunkList :: Int -> [a] -> [[a]]
chunkList _ [] = []
chunkList n xs = take n xs : chunkList n (drop n xs)

main :: IO ()
main = do
    print $ chunkList 2 list