
{-
  the optimal way to do this one is
  given a range n to m we keep only the primes.
  if any given number x is larger than n we 
  test if its divisible by all the lists in ns
-}

largestMultiples n = go [n, n - 1..1]
  where go (x:xs) = x : filter (\y -> x `mod` y /= 0) (go xs)
        go [] = []

primesTo n = sieve [2..n]
  where sieve (x:xs) = x : filter (\y -> y `mod` x /= 0) (sieve xs) 
        sieve [] = []

-- divisible by
multipleOf :: Int -> Int
multipleOf n = 
  let ns = largestMultiples n
      test x = all (\y -> x `mod` y == 0) ns
  in filter test [n..]