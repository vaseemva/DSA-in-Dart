import 'dart:io';

import 'package:stack/stack.dart';

class Node {
  int value;
  Node? next;
  Node(this.value);
}

class QueueDS {
  Node? rear;
  Node? front;
  int length = 0;


  bool get isEmpty=>front==null;

  void enqueue(int value) {
    Node node = Node(value);
    if (rear == null) {
      front = node;
      rear = node;
    } else {
      rear!.next = node;
      rear = node;
    }
  }

  int dequeue(){
    if (front==null) {
      throw StateError('queue is empty');
    }
    int data=front!.value;
    front=front!.next;
    if (front==null) {
      rear==null;
    }
    return data;
  }

  void print(){
    if (front==null) {
      return;
    }
    Node? current=front;
    while(current!=null){
    stdout.write(current.value);
    current=current.next;
    }
  }

   void reverse() {
    if (front == null) {
      return; // Nothing to reverse
    }
    Node? prev ;
    Node? current = front;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    rear = front;
    front = prev;
  }
}
  

