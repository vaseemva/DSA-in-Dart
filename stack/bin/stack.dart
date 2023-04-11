import 'dart:collection';
import 'dart:io';

import 'package:stack/stack.dart' as stack;

void main(List<String> arguments) {
  final stack=ListQueue();
  stack.add(1);
  stack.add(2);
  stack.add(3);
  stack.removeLast();
  stdout.write(stack);
}
