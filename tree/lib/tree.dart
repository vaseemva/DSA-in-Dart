import 'dart:io';

import 'package:stack/stack.dart';

class Tree {
  TreeNode? root;
  
  createTree(){
    TreeNode first=TreeNode(9);
    TreeNode second=TreeNode(2);
    TreeNode third=TreeNode(3);
    TreeNode fourth=TreeNode(4);
    // TreeNode fifth=TreeNode(5);
  root=first;
  root!.left=second;
  second.right=third;
  second.left=fourth;
  third.right=TreeNode(12);
  third.left=TreeNode(13);
  // second.right=fifth;
  }
  recursivePreorder(TreeNode? root){
    if (root!=null) {
     stdout.write("${root.data} .... ");
    recursivePreorder(root.left);
    recursivePreorder(root.right);
    }
    
  }
  iterativePreorder(TreeNode? root){
    if (root==null) {
      return;
    }
   Stack<TreeNode?> stack=Stack<TreeNode>();
   stack.push(root);
   while(stack.isNotEmpty){
     TreeNode? temp=stack.pop();
     print(temp!.data);
     if (temp.right!=null) {
       stack.push(temp.right);
     }
     if (temp.left!=null) {
       stack.push(temp.left);
     }
     
   }
  }
  recursiveInorder(TreeNode? root){
    if (root==null) {
      return;
    }
    recursiveInorder(root.left);
    print(root.data);
    recursiveInorder(root.right);
  }
  iterativeInorder(TreeNode? root){
    Stack<TreeNode>stack=Stack<TreeNode>();
    TreeNode? temp=root;
    while (stack.isNotEmpty||temp!=null) {
      if (temp!=null) {
        stack.push(temp);
        temp=temp.left;
      } else {
        temp=stack.pop();
        print(temp.data);
        temp=temp.right;
      }
    }
  }
}

class TreeNode {
  int data;
   TreeNode? left;
   TreeNode? right;
  TreeNode(this.data);
}