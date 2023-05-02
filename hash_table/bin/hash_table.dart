import 'package:hash_table/hash_table.dart';

void main(List<String> args) {
  print(125%10);
  HashTable hashTable= HashTable(capacity: 10);
  hashTable.put(125, "john");
  hashTable.put(125, "value");
  hashTable.put(135, "ramya");
  hashTable.remove(125);
  
  
  print(hashTable.size);
  print(hashTable.get(135));
}