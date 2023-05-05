import 'dart:io';

import 'package:tree/postorder_iterative.dart';
import 'package:tree/postorder_recursive.dart';
import 'package:tree/tree.dart';

void main(List<String> args) {
 Tree tree=Tree();
 tree.createTree();
//  print(tree.root!.data);
 
 tree.root = TreeNode(1);
  tree.root!.left = TreeNode(2);
  tree.root!.right = TreeNode(3);
  tree.root!.left!.left = TreeNode(4);
  tree.root!.left!.right = TreeNode(5);
  // tree.recursivePreorder(tree.root);
  // tree.iterativePreorder(tree.root);
  // stdout.writeln();
  // tree.recursiveInorder(tree.root);
  
  // tree.iterativeInorder(tree.root);
  recursivePostorder(tree.root);
  stdout.writeln();
  iterativepostorder(tree.root);
  
}
