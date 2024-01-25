import 'package:BinaryTrees/binary_node.dart';
import 'package:BinaryTrees/binary_search_tree.dart';

BinaryNode<int> createBinaryTree() {
  final zero = BinaryNode(0);
  final one = BinaryNode(1);
  final five = BinaryNode(5);
  final seven = BinaryNode(7);
  final eight = BinaryNode(8);
  final nine = BinaryNode(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}

BinarySearchTree<int> buildExampleTree() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}

void main() {
  final tree = buildExampleTree();
  print('Tree before removal:');
  print(tree);
  tree.remove(3);
  print('Tree after removing root:');
  print(tree);
}
