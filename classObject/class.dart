import 'dart:collection';

void main() {
  final scores = {'Eric': 9, 'Mark': 12, 'Wayne': 1};
  scores['Eric'] = 0;
  print(scores);
  scores['Andrew'] = 10;
  print(scores);
  scores['Eric'] = 15;
  print(scores);
  final hashMap = HashMap.of(scores);
  print(hashMap);
  var bag = {'one', 'two', 'three'};
  bag.add('four');
  print(bag);
  final myList = [1, 2, 2, 3, 4];
  final myset = <int>{};
  for (final item in myList) {
    if (myset.contains(item)) {
      continue;
    }
    myset.add(item);
  }
  print(myset);
}
