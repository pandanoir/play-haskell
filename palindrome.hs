module Main where
-- 与えられた文字列が回文であるかどうかを判定する関数を作成する。

isPalindrome_::String -> String->String -> Bool
isPalindrome_ "" rev orig = rev == orig
isPalindrome_ (x:xs) rev orig = isPalindrome_ xs (x:rev) orig

isPalindrome :: String -> Bool
isPalindrome s = isPalindrome_ s "" s

main = do
  print $ isPalindrome "yes"
  print $ isPalindrome "yey"
  print $ isPalindrome "civic"