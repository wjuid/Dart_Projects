import 'stack.dart';

void main() {
  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  print('************************');
  smokeStack.pop();
  print(smokeStack);
}
