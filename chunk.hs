module Main where
-- 与えられたリストを一定の幅で区切り、二次元のリストに変換する関数を作成する
import Data.List
import Data.Ord
list = [1,2,3,4,5]

chunk l size =
  map (map fst) $ groupBy (\a b -> snd a == snd b) $ zip list $ repeat 0 >> replicate size 0 ++ replicate size 1

main :: IO ()
main = do
    print $ chunk list 2