import 'package:tree/tree.dart';

recursivePostorder(TreeNode? root){
  if (root==null) {
    return;
  }
  recursivePostorder(root.left);
  recursivePostorder(root.right);
  print(root.data);
}