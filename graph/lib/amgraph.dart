import 'dart:io';

//adjacency matrix representation of Graph
class Graph {
  List<List<int>>? adjmatrix;
  int v = 0;
  int nodes;
  Graph(this.nodes) {
    adjmatrix = List.generate(nodes, (_) => List.filled(nodes, 0));
    v = 0;
  }
  void addEdge(int u, int k) {
    adjmatrix![u][k] = 1;
    adjmatrix![k][u] = 1;
    v++;
  }

  printVertices() {
    print("vertices:$nodes, edges:$v");
    for (var i = 0; i < nodes; i++) {
      stdout.write("$i :");
      for (var element in adjmatrix![i]) {
        stdout.write("$element  ");
      }
      stdout.writeln();
    }
  }
}
