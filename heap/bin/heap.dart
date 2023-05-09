import 'package:heap/heap.dart';
import 'package:heap/heapsort.dart';

// void main(List<String> arguments) {
//   Maxheap heap = Maxheap(5);

//   heap.insert(6);
//   heap.insert(5);
//   heap.insert(7);

//   heap.insert(8);
//   print(heap.heap);
//   print(heap.deleteMax());
//   print(heap.heap);
//   List<int>vaseem=[1,2,3,4,5,6,7,8];
//   heap.build(vaseem);
//   print(heap.heap);

// }
void main(List<String> args) {
  List<int>arr=[8,7,6,5,4,1,2];
  heapSort(arr);
  print(arr);
 
}
