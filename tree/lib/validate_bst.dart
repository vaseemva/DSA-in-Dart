import 'package:tree/binary_search_tree.dart';

bool isBst(TreeNode? root,int min,int max){
  if (root==null) {
    return true;
  }
  bool left=isBst(root.left, min, root.value);
  if (left) {
    bool right=isBst(root.right, root.value, max);
    return right;
  }
  return false;
}