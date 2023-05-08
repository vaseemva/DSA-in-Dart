import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:tree/binary_search_tree.dart';
import 'package:tree/find_max.dart';
import 'package:tree/levelorder_traversal.dart';
import 'package:tree/postorder_iterative.dart';
import 'package:tree/postorder_recursive.dart';
import 'package:tree/tree.dart';
import 'package:tree/validate_bst.dart';

void main(List<String> args) {
//  Tree tree=Tree();
//  tree.createTree();
// //  print(tree.root!.data);
 
//  tree.root = TreeNode(1);
//   tree.root!.left = TreeNode(2);
//   tree.root!.right = TreeNode(3);
//   tree.root!.left!.left = TreeNode(4);
//   tree.root!.left!.right = TreeNode(5);
//   // tree.recursivePreorder(tree.root);
//   // tree.iterativePreorder(tree.root);
//   // stdout.writeln();
//   // tree.recursiveInorder(tree.root);
  
//   // tree.iterativeInorder(tree.root);
//   recursivePostorder(tree.root);
//   stdout.writeln();
//   iterativepostorder(tree.root);
//  levelorder(tree.root);
// print(findMax(tree.root));
  BinarySearchTree binarySearchTree=BinarySearchTree();

 
 binarySearchTree.insert(5);
 binarySearchTree.insert(3);
 binarySearchTree.insert(7);
  binarySearchTree.insert(1);

if (binarySearchTree.search(3)) {
  print("element found");
  levelorder(binarySearchTree.root);
}
 
 print(findMax(binarySearchTree.root)); 
 print(isBst(binarySearchTree.root, -123, 560));
 print(binarySearchTree.findClosestValueInBst(10));
}

