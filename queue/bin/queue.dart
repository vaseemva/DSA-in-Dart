import 'dart:collection';
import 'dart:io';


import 'package:queue/queue.dart';
import 'package:stack/stack.dart';

void main(List<String> arguments) {
  // Queue<int> queue = Queue<int>();
  // Queue<int> queue2 = Queue.from([6, 5, 4, 3, 2, 1]);

  // queue.addAll([1, 2, 3, 3, 4, 4, 4, 5]);
  // queue.removeLast();
  // // queue.remove(2);
  // removeDupicates(queue);
  // queue.forEach((element) {
  //   stdout.write("$element" + " > ");
  // });
  // stdout.writeln();
  // print(greatest(queue));
  // stdout.writeln();
  // reverse(queue2);
  // queue2.forEach((element) {
  //   stdout.write(element);
  // });
  QueueDS queue=QueueDS();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.dequeue();
  queue.reverse();
  while (!queue.isEmpty) {
    stdout.write(queue.dequeue());
  }
}

int greatest(Queue<int> queue) {
  int gratest = queue.first;
  for (int element in queue) {
    if (element > gratest) {
      gratest = element;
    }
  }
  return gratest;
}

void removeDupicates(Queue queue) {
  Set set = Set();
  int length = queue.length;
  for (var i = 0; i < length; i++) {
    var element = queue.removeFirst();
    if (!set.contains(element)) {
      set.add(element);
      queue.addLast(element);
    }
  }
}

void reverse(Queue queue) {
  Stack<int> stack = Stack();
  while (queue.isNotEmpty) {
    stack.push(queue.removeFirst());
  }
  while (stack.isNotEmpty) {
    queue.add(stack.pop());
  }
}
