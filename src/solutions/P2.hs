module P2 (solve) where
-- Every single fibonacci number in EXISTENCE
fibonacci :: [Int]
fibonacci = 
  let fibs a b = a : fibs b (a + b) 
  in fibs 0 1

problem2 :: Int
problem2 = 
  let evenFibs = filter even fibonacci
  in sum $ takeWhile (4000000 >) evenFibs

solve = print problem2          
