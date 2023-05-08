
import 'package:tree/binary_search_tree.dart';

int findMax(TreeNode? root){
  if (root==null) {

    return -1000;
  }
  int result=root.value;
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