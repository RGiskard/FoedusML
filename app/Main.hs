module Main where

import FoedusML.Tensor

main :: IO ()
main = do
    let t1 = fromList [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]
        t2 = fromList [[[1, 1], [1, 1]], [[1, 1], [1, 1]]]
    
    print $ toList (tensorAdd t1 t2)
    print $ toList (tensorMult t1 t2)
    print $ toList (scalarMult 2.0 t1)

