module P4 (solve) where

-- Determine if a number is a palindrome
-- Probably hyper inefficient but it works for now
isPalindrome :: Int -> Bool
isPalindrome n = 
  and $ zipWith (==) (show n) (reverse $ show n)

-- Generate all possible products between bounds
allProducts :: Num a => [a] -> [a]
allProducts ls = [x * y | y <- ls, x <- ls]

-- Find the maximum in the list of all products that are palindromes
problem4 = maximum . filter isPalindrome . allProducts $ [999,998..0]

solve = print problem4
