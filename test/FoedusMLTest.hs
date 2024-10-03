import Test.Hspec
import FoedusML.Tensor

main :: IO ()
main = hspec $ do
  describe "FoedusML.Tensor" $ do
    it "adds two tensors correctly" $ do
      let t1 = fromList [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]
          t2 = fromList [[[1, 1], [1, 1]], [[1, 1], [1, 1]]]
      toList (tensorAdd t1 t2) `shouldBe` [[[2, 3], [4, 5]], [[6, 7], [8, 9]]]

