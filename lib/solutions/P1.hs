module P1 (solve) where 
{-
  Solves https://projecteuler.net/problem=1
-}
problem1 :: Int
problem1 = sum . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [0..999]

solve = print problem1
