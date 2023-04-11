import 'dart:io';

class Node {
  int value;
  Node? next;
  Node(this.value, [this.next]);
}

class LinkedList {
  Node? head;
  LinkedList([this.head]);
  void add(int value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(value);
    }
  }

  void traverse() async {
    Node? current = head;
    while (current != null) {
      stdout.write('${current.value} ');
      if (current.next != null) {
        stdout.write(' > ');
      }
      current = current.next;
    }
  }

  void deleteLast() {
    if (head == null) return;
    if (head!.next==null) {
      head=null;
      return;
    }
    Node current=head!;
    while (current.next!.next!=null) {
      current=current.next!;
    }
    current.next=null;
  }
  void deleteFirst(){
    if (head==null) return;
    if(head!.next==null){
      head=null;
      return;
    }
   head=head!.next;
  }
int greatestElement(){
  int greatest;
  if(head==null)return 0;
  if(head!.next==null){
  greatest=head!.value;
  return greatest;
  }
  greatest=head!.value;
  Node? current=head;
  while(current != null){
    if (current.value>greatest) {
      greatest=current.value;
      
    }
    current=current.next;
  }
  return greatest;
}

void reverse(){
  if(head==null||head!.next==null)return;
  Node? current=head;
  Node? previous;
  Node? next;
  while (current!=null) {
    next=current.next;
    current.next=previous;
    previous=current;
    current=next;
  }
  head=previous;
}

}
