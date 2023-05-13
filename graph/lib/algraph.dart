import 'dart:collection';
import 'dart:io';

import 'package:graph/linked_list.dart';
import 'package:stack/stack.dart';

class AlGraph {
  List<LinkedList?>? adj;
  int v = 0;
  AlGraph(int nodes) {
    adj = List.generate(nodes, (_) => LinkedList());
  }
  addEdge(int r, int c) {
    adj![r]!.add(c);
    adj![c]!.add(r);
    v++;
  }

  bfs(int s) {
    List<bool> visited = List.generate(v, (_) => false);
    Queue<int> queue = Queue<int>();
    visited[s] = true;
    queue.add(s);
    while (queue.isNotEmpty) {
      int u = queue.removeFirst();
      stdout.write(u);
      Node? current = adj![u]!.head;

      while (current != null) {
        if (!visited[current.value]) {
          visited[current.value] = true;
          queue.add(current.value);
        }
        current = current.next;
      }
    }
  }

  idfs(int s) {
    List<bool> visited = List.generate(v, (_) => false);
    Stack stack = Stack<int>();
    stack.push(s);
    while (stack.isNotEmpty) {
      int u = stack.pop();

      if (!visited[u]) {
        visited[u] = true;
        stdout.write(u);
        Node? current = adj![u]!.head;
        while (current != null) {
          if (!visited[current.value]) {
            stack.push(current.value);
          }
          current = current.next;
        }
      }
    }
  }

  rdfs() {
    List<bool> visited = List.generate(v, (_) => false);
    for (var i = 0; i < v; i++) {
      if (!visited[i]) {
        _rdfs(i, visited);
      }
    }
  }

  _rdfs(int v, List<bool> visited) {
    visited[v] = true;
    stdout.write(v);
    Node? current = adj![v]!.head;
    while (current != null) {
      if (!visited[current.value]) {
        _rdfs(current.value, visited);
      }
      current = current.next;
    }
  }
  //greatest in the graph

  int greatest() {
    int max = 0;
    for (var i = 0; i < adj!.length; i++) {
      Node? current = adj![i]!.head;
      while (current != null) {
        if (current.value > max) {
          max = current.value;
        }
        current = current.next;
      }
    }
    return max;
  }

  
  
}
