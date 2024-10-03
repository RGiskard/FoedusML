module FoedusML.Tensor
    ( Tensor
    , fromList
    , toList
    , tensorAdd
    , tensorMult
    , scalarMult
    , matrixMult
    , vectorAdd
    ) where

import Prelude hiding ((<>))              -- Oculta el operador <> de Prelude
import Numeric.LinearAlgebra (Matrix, Vector, (<>), fromLists, toLists, scale)

type Tensor = [Matrix Double]

fromList :: [[[Double]]] -> Tensor
fromList = map fromLists

toList :: Tensor -> [[[Double]]]
toList = map toLists

tensorAdd :: Tensor -> Tensor -> Tensor
tensorAdd t1 t2 = zipWith (+) t1 t2

tensorMult :: Tensor -> Tensor -> Tensor
tensorMult t1 t2 = zipWith (<>) t1 t2

scalarMult :: Double -> Tensor -> Tensor
scalarMult s = map (scale s)

matrixMult :: Matrix Double -> Matrix Double -> Matrix Double
matrixMult = (<>)

vectorAdd :: Vector Double -> Vector Double -> Vector Double
vectorAdd v1 v2 = v1 + v2

