

import 'dart:math';

import 'package:array_practice/first_repeating.dart';
import 'package:array_practice/maximum_difference.dart';
import 'package:array_practice/remove_duplicates.dart';
import 'package:array_practice/reverse_array.dart';
import 'package:array_practice/second_largest.dart';

void main(List<String> arguments) {
  //declaring an array
  List<int> numbers = [1, 2,2, 3, 4,4,5, 5,73];
  print(maximumDifference(numbers));
  print(firstRepeating(numbers));
  print(numbers);
  numbers=removeDuplicates(numbers);
  print(numbers);
  print(secondLargest(numbers));
  print(reverseArray(numbers));
  



}
