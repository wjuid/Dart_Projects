import 'package:BinaryTrees/binary_node.dart';

class BinarySearchTree<E extends Comparable<dynamic>> {
  BinaryNode<E>? root;

  @override
  String toString() {
    return root.toString();
  }
}
