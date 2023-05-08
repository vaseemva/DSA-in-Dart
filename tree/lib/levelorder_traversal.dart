

import 'dart:collection';
import 'dart:io';

import 'package:tree/binary_search_tree.dart';

levelorder(TreeNode? root) {
  if (root == null) {
    return;
  }
  Queue<TreeNode> queue = Queue();
  queue.add(root);
  while (queue.isNotEmpty) {
    TreeNode? temp = queue.removeFirst();
    stdout.write("${temp.value}..>");
    if (temp.left != null) {
      queue.add(temp.left!);
    }
    if (temp.right != null) {
      queue.add(temp.right!);
    }
  }
}
