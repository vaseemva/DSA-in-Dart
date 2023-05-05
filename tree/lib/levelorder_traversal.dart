import 'dart:collection';
import 'dart:io';

import 'package:tree/tree.dart';

levelorder(TreeNode? root) {
  if (root == null) {
    return;
  }
  Queue<TreeNode> queue = Queue();
  queue.add(root);
  while (queue.isNotEmpty) {
    TreeNode? temp = queue.removeFirst();
    stdout.write("${temp.data}..>");
    if (temp.left != null) {
      queue.add(temp.left!);
    }
    if (temp.right != null) {
      queue.add(temp.right!);
    }
  }
}
