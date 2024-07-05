import Control.Monad (mapM_)

-- All primes
primes :: [Int]
primes = 
  let sieve (x:xs) = x : filter (\y -> y `mod` x /= 0) (sieve xs)
  in 2 : sieve [3,5..]

-- Find all prime factors of a number...
primeFactors :: Int -> [Int]
primeFactors n = go n ps
  where go n (x:xs) 
          | n `mod` x == 0 = x : go n xs 
          | otherwise = go n xs
        go n [] = []
        ps = takeWhile (intSqrt n >=) primes

intSqrt :: Int -> Int
intSqrt = floor . sqrt . fromIntegral

{- 
  Find largest prime factor
  this takes like 20 minutes to run lmaoo
  but it spits the correct answer out pretty quickly
  I think there is some trick for stopping the search for 
  prime factors I am not aware of. I just terminated my 
  linear search at sqrt(n)
-}
problem3 = primeFactors 600851475143


{-
 I'm using mapM_ here to constantly see the output
 of the solver as it does a linear search across
 all primes up to sqrt(n).
 If I didn't do this you'd have to wait like twenty minutes lmao
 -}
solveProblem3 = mapM_ print problem3