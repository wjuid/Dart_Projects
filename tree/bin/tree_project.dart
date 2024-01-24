import 'package:tree_project/tree.dart';

void main() {
  final tree = makeBeverageTree();
  tree.forEachLevelOrder((node) {
    print(node.value);
  });
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('Beverages');
  final hot = TreeNode('Hot--0');
  final cold = TreeNode('Cold--0');
  final tea = TreeNode('tea--1');
  final coffee = TreeNode('coffee--1');
  final chocolate = TreeNode('chocolate--1');
  final blackTea = TreeNode('black--2');
  final greenTea = TreeNode('green--2');
  final chaiTea = TreeNode('chai--2');
  final soda = TreeNode('soda--1');
  final milk = TreeNode('milk--1');
  final gingerAle = TreeNode('ginger ale--3');
  final bitterLemon = TreeNode('bitter lemon--3');

  tree.add(hot);
  tree.add(cold);
  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);

  cold.add(soda);
  cold.add(milk);
  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);

  soda.add(gingerAle);
  soda.add(bitterLemon);
  return tree;
}
