import 'linked_list.dart' hide Node;

Function makeAddr(num addBy) {
  return (num i) => addBy + 1;
}

void main() {
  final list = LinkedList<int>();
  list.push(1);
  list.push(2);
  list.push(3);
  for (final element in list) {
    print(element);
  }
}
