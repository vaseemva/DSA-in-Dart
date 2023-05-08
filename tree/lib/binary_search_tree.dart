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
