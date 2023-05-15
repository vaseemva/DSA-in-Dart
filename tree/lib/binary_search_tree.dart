class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value) {
    left = null;
    right = null;
  }
}

class BinarySearchTree {
  TreeNode? root;

  BinarySearchTree() {
    root = null;
  }

  void insert(int value) {
    if (root == null) {
      root = TreeNode(value);
    } else {
      _insertNode(root!, value);
    }
  }

  void _insertNode(TreeNode node, int value) {
    if (value < node.value) {
      if (node.left == null) {
        node.left = TreeNode(value);
      } else {
        _insertNode(node.left!, value);
      }
    } else if (value > node.value) {
      if (node.right == null) {
        node.right = TreeNode(value);
      } else {
        _insertNode(node.right!, value);
      }
    }
  }
  //delete a node from BST
  void delete(int value) {
    root = _deleteNode(root, value);
  }
  _deleteNode(TreeNode? node, int value) {
    if (node == null) {
      return node;
    }
    if (value < node.value) {
      node.left = _deleteNode(node.left, value);
    } else if (value > node.value) {
      node.right = _deleteNode(node.right, value);
    } else {
      if (node.left == null && node.right == null) {
        return null;
      } else if (node.left == null) {
        return node.right;
      } else if (node.right == null) {
        return node.left;
      } else {
        TreeNode? temp = _findMinNode(node.right);
        node.value = temp!.value;
        node.right = _deleteNode(node.right, temp.value);
      }
    }
    return node;
  }
  _findMinNode(TreeNode? node) {
    if (node == null) {
      return null;
    }
    if (node.left == null) {
      return node;
    } else {
      return _findMinNode(node.left);
    }
  }


  bool search(int value) {
    return _searchNode(root, value);
  }

  bool _searchNode(TreeNode? node, int value) {
    if (node == null) {
      return false;
    }
    if (node.value == value) {
      return true;
    } else if (value < node.value) {
      return _searchNode(node.left, value);
    } else {
      return _searchNode(node.right, value);
    }
  }

  int findClosestValueInBst(int target) {
    if (root == null) {
      return -1;
    }
    return traverse(root, target, root!.value);
  }

  int traverse(TreeNode? tree, int target, int closest) {
    if (tree == null) {
      return closest;
    }
    if ((tree.value - target).abs() < (closest - target).abs()) {
      closest = tree.value;
    }
    if (target < tree.value) {
      return traverse(tree.left, target, closest);
    } else if (target > tree.value) {
      return traverse(tree.right, target, closest);
    } else {
      return closest;
    }
  }
}
