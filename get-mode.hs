module Main where
import Data.List
import Data.Ord
-- 与えられたリストから最頻値（最も出現回数の多い値）を計算する関数を作成する。

count [] = []
count (x:xs) = go xs (x,1)
  where
    go (y:ys) (x,n)
      | x == y = go ys (x,n+1)
      | otherwise = (x,n): go ys (y,1)
    go [] x = [x]

list = [1,2,1,1,1,2,2,3,4,5]
getMode l = fst $ maximumBy (comparing snd) $ count $ sort l 

main = do
  print $ getMode list


-- ChatGPT に聞いた模範解答。頭いいな…
-- module Main where
-- -- 与えられたリストから最頻値（最も出現回数の多い値）を計算する関数を作成する。

-- import Data.List (sort, group, maximumBy)
-- import Data.Ord (comparing)

-- mode [] = Nothing
-- mode xs = case maximumBy (comparing length) (group $ sort xs) of
--             [] -> Nothing
--             (y:_) -> Just y

-- list = [1,2,1,1,1,2,2,3,4,5]

-- main = do
--   print $ mode list