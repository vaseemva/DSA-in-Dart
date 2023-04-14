import 'dart:io';

class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data) {
    next = null;
  }
}

class StackDs <T>{
  Node<T>? top;
  void push(T value){
  Node<T> newNode=Node(value);

  if (top==null) {
    top=newNode;
  }else{
    newNode.next=top;
    top=newNode;
  }
  }

  T? pop(){
    if (top==null) {
      return null;
    }else{
      T value=top!.data;
      top=top!.next;
      return value;
    }
  }
  bool isEmpty(){
    return top==null;
  }
  printStack(){
    if (top==null) {
      return;
    }
    Node<T>? current=top!;
    while (current!=null) {
      stdout.write(current.data);
      current=current.next;
    }
  }
  int greatest(){
    int greatest=int.parse(top!.data.toString());
    Node<T>? current=top;
    while (current!=null) {
      if (int.parse(current.data.toString())>greatest) {
        greatest=int.parse(current.data.toString());
      }
      current=current.next;
    }
    return greatest;
  }
}
