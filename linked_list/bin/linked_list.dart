

import 'dart:collection';

import 'package:linked_list/doubly_linked_list.dart';
import 'package:linked_list/linked_list.dart';

void main(List<String> arguments) {
  // LinkedList list=LinkedList();
  // Node node1=Node(1);
  // Node node2=Node(2);
  // Node node3=Node(3);
  // node1.next=node2;
  // node2.next=node3;
  
  // list.head=node1;
  // list.add(4);
  // list.add(5);
  // list.add(6);
  // list.deleteLast();
  // list.deleteFirst();
  // list.reverse();

  // list.traverse();
  // print(list.greatestElement());
DoublyLinkedList linkedList=DoublyLinkedList();
linkedList.addNode(1);
linkedList.addNode(2);
linkedList.addNode(3);
linkedList.addNode(4);
linkedList.printList();
  
}
