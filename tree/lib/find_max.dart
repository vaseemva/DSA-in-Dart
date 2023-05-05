import 'package:tree/tree.dart';

int findMax(TreeNode? root){
  if (root==null) {

    return -1000;
  }
  int result=root.data;
  int left=findMax(root.left);
  int right=findMax(root.right);
  if (left>result) {
    result=left;
  }
  if (right>result) {
    result=right;
  }
  return result;
}