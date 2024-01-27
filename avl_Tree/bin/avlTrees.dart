import 'package:avlTrees/avl_tree.dart';

void main() {
  final tree = inserting();
  print(tree);
  tree.remove(3);
  print(tree);
  //removing();
}

AvlTree<num> inserting() {
  final tree = AvlTree<num>();
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }
  return tree;
}

void removing() {
  final tree = AvlTree<num>();
  tree.insert(15);
  tree.insert(10);
  tree.insert(16);
  tree.insert(18);
  print(tree);
  tree.remove(10);
  print(tree);
}
