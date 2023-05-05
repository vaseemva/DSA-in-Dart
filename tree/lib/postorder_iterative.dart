import 'package:stack/stack.dart';
import 'package:tree/tree.dart';

iterativepostorder(TreeNode? root){
  TreeNode? current=root;
  Stack<TreeNode>stack=Stack<TreeNode>();
  while (stack.isNotEmpty||current!=null) {
    if (current!=null) {
      stack.push(current);
    current=current.left;
    } else {
      TreeNode? temp=stack.top().right;
      if (temp==null) {
        temp=stack.pop();
        print(temp.data);
        while (stack.isNotEmpty&&temp==stack.top().right) {
          temp=stack.pop();
          print(temp.data);
        }
      } else {
        current=temp;
      }
    }
  }

}