import '../lib/queue.dart';

void main() {
  final queue = QueueStack<String>();

  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Eric');
  queue.enqueue('Full');
  print(queue);
  queue.dequeue();
  print(queue);
  queue.dequeue();
  queue.peek;
  print(queue);
}
