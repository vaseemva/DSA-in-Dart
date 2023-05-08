

import 'package:heap/heap.dart';

void main(List<String> arguments) {
  Maxheap heap=Maxheap(5);
  print(heap.size);
  print(heap.isEmpty);
  heap.insert(5);
  heap.insert(7);

  heap.insert(78);
  heap.insert(5);
  heap.insert(7);

  heap.insert(78);
  heap.insert(5);
  heap.insert(7);

  heap.insert(78);
  heap.insert(5);
  heap.insert(7);

  heap.insert(78);
  heap.insert(5);
  heap.insert(7);

  heap.insert(78);
  print(heap.heap);
}
