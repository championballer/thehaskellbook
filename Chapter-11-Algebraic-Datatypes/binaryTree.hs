-- Binary Tree --

module BinaryTree where

data BinaryTree a = Leaf
                  | Node (BinaryTree a) a (BinaryTree a)
                  deriving (Eq, Ord, Show)

insert' :: Ord a => a -> BinaryTree a -> BinaryTree a
insert' b Leaf = Node Leaf b Leaf
insert' b (Node left a right)
 | b == a = Node left a right
 | b < a = Node (insert' b left) a right
 | b > a = Node left a (insert' b right)

mapTree :: (a->b)
        -> BinaryTree a
        -> BinaryTree b

mapTree _ Leaf = Leaf
mapTree f (Node left a right) = Node (mapTree f left) (f a) (mapTree f right)

testTree' :: BinaryTree Integer
testTree' = 
    Node (Node Leaf 3 Leaf)
         1
         (Node Leaf 4 Leaf)

mapExpected = 
    Node (Node Leaf 6 Leaf)
         2
         (Node Leaf 8 Leaf)

mapOkay = 
    if mapTree (*2) testTree' == mapExpected
        then print "yup okay!"
        else error "test failed!"

preOrder :: BinaryTree a -> [a]
preOrder Leaf = []
preOrder (Node left a right) = a : (preOrder left ++ preOrder right)

inOrder :: BinaryTree a -> [a]
inOrder Leaf = []
inOrder (Node left a right) = (inOrder left) ++ [a] ++ (inOrder right)

postOrder :: BinaryTree a -> [a]
postOrder Leaf = []
postOrder (Node left a right) = (postOrder left) ++ (postOrder right) ++ [a]

testTree :: BinaryTree Integer
testTree = 
    Node (Node Leaf 1 Leaf)
         2
         (Node Leaf 3 Leaf)

testPreOrder :: IO()
testPreOrder = 
    if preOrder testTree == [2,1,3]
    then putStrLn "Preorder fine"
    else putStrLn "Bad news bears, preorder failed" 

testInOrder :: IO()
testInOrder = 
    if inOrder testTree == [1,2,3]
    then putStrLn "Inorder okay"
    else putStrLn "Bad news bears, inorder failed"

testPostOrder :: IO()
testPostOrder = 
    if postOrder testTree == [1,3,2]
    then putStrLn "Postorder okay"
    else putStrLn "Bad news bears, postorder failed"

main :: IO()
main = do
    testPreOrder
    testInOrder
    testPostOrder