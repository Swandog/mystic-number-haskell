-- file: mystic.hs
-- lines beginning with "--" are comments.


getDir = do

  putStrLn "Please enter dir"
  dir <- getLine
  putStrLn ("You Go " ++ dir)
  getDir
  

main = do
  putStrLn "Please Enter Size"
  size <- getLine
  
  let
    isize = read size :: Int
    puzz = createPuzzle (isize * isize - 1)
--  putStrLn $ show puzz
  putStr $ showPuzz puzz
--  getDir puzz
  getDir puzz

createPuzzle :: Int -> [Int]
createPuzzle a = constructNextPuzz a [ 0 ]

constructNextPuzz :: Int -> [Int] -> [Int]
constructNextPuzz 0 xs = xs
constructNextPuzz a xs = constructNextPuzz (a-1)  (a : xs)

showPuzz :: [Int] -> String
showPuzz [] = ""
showPuzz xs = (show $ take 3 xs) ++ "\n" ++ (showPuzz $ drop 3 xs)
