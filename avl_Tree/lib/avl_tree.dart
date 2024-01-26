import 'package:avlTrees/avl_node.dart';
import 'dart:math' as math;

calss AvlTree<E extends Comparable<E>>{
  AvlNode<E>? root;
}

extension _MinFinder<E> on AvlNode<E>{
  AvlNode<E> get min => leftChild?.min ?? this;
}