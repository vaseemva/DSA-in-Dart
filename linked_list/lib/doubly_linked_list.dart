import 'dart:io';

class DoublyNode {
  int value;
  DoublyNode? previous;
  DoublyNode? next;
  DoublyNode(this.value, [this.previous, this.next]);
}

class DoublyLinkedList {
  DoublyNode? head;
  DoublyLinkedList([this.head]);
  printList() {
    DoublyNode? node = head;
    while (node != null) {
      stdout.write(node.value);
      if (node.next != null) {
        stdout.write(" >");
      }
      node = node.next;
    }
  }

  addNode(int value) {
    DoublyNode doublyNode = DoublyNode(value);
    if (head == null) {
      head = doublyNode;
    } else {
      DoublyNode temp = head!;

      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = doublyNode;
      doublyNode.previous = temp;
    }
  }
}
