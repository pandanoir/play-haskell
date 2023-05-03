module Main where
-- 与えられた二つのリストの要素を交互に組み合わせる関数を作成する
list1 = [1,3,5]
list2 = [2,4,6]

myZip [] b = b
myZip a [] = a
myZip (a:as) (b:bs) = a:b:myZip as bs

main :: IO ()
main = do
    print $ myZip list1 list2