import 'package:sorts/bubble_sort.dart';
import 'package:sorts/dutch_national_flag.dart';
import 'package:sorts/insertion_sort.dart';
import 'package:sorts/merge_sort.dart';
import 'package:sorts/mergesort.dart';
import 'package:sorts/quicksort.dart';
import 'package:sorts/selection_sort.dart';

void main(List<String> arguments) {
  List<int>list=[4, 3, 6, 8, 1, 9, 2, 5, 7];
  // List<int>dutchList=[1,2,0,0,1,2,2,1,0];
  // List<int>temp=List.filled(list.length, 0);
  print(list);
// insertionSort(list);
// selectionSort(list);
// mSort(list,temp , list.length-1, 0);
//   print(list);
// print(dutchList);
// dutchSort(dutchList);
// print(dutchList);
quickSort(list, 0, list.length-1);
print(list);


  
}
