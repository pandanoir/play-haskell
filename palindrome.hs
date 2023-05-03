module Main where
-- 与えられた文字列が回文であるかどうかを判定する関数を作成する。

rev "" = ""
rev (x:xs) = rev xs ++ [x]

isPalindrome :: String -> Bool
isPalindrome s = rev s == s

main = do
  print $ isPalindrome "yes"
  print $ isPalindrome "yey"
  print $ isPalindrome "civic"