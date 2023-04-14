import 'dart:collection';
import 'dart:io';

import 'package:stack/stack.dart';

void main(List<String> arguments) {
//   var stack =ListQueue();
//   stack.add(1);
//   stack.add(2);
//   stack.add(3);
//  var d= stack.removeLast();
//  print(d);
//   stdout.write(stack);
  StackDs stack = StackDs();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(85);
  stack.printStack();
  stdout.writeln();
  stdout.writeln(stack.greatest());
}
