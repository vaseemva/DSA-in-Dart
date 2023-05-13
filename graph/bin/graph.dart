// import 'package:graph/amgraph.dart';

// void main(List<String> args) {
//  Graph graph=Graph( 4);
//  graph.addEdge(0, 1);
//  graph.addEdge(1, 2);
//  graph.printVertices();
// }
import 'dart:io';

import 'package:graph/algraph.dart';

void main() {
  AlGraph alGraph = AlGraph(5);
  alGraph.addEdge(0, 1);
  alGraph.addEdge(1, 2);
  alGraph.addEdge(2, 3);
  alGraph.addEdge(3, 0);
  alGraph.addEdge(2, 4);
 for (var i = 0; i < alGraph.adj!.length; i++) {
  stdout.write("$i  :");
   alGraph.adj![i]!.traverse();
   stdout.writeln();
 }
  alGraph.idfs(0);
  stdout.writeln();
  alGraph.rdfs();
}
