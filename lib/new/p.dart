

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class binarysearchtree {
  Node? root;

  insert(int value) {
    Node? currentnode = root;

    if (currentnode == null) {
      root = Node(value);
      return;
    }

    while (true) {
      if (value < currentnode!.value) {
        if (currentnode.left == null) {
          currentnode.left = Node(value);
          break;
        } else {
          currentnode = currentnode.left;
        }
      } else if (value > currentnode.value) {
        if (currentnode.right == null) {
          currentnode.right = Node(value);
          break;
        } else {
          currentnode = currentnode.right;
        }
      } else {
        break;
      }
    }
  }

  bool isBST(Node? root) {
    if (root == null) {
      return true;
    }

    if (root.left != null && root.left!.value > root.value) {
      return false;
    }

    if (root.right != null && root.right!.value < root.value) {
      return false;
    }

    if (!isBST(root.left) || !isBST(root.right)) {
      return false;
    }
    return true;
  }

  inOrder(Node? node) {
    if (node != null) {
      inOrder(node.left);
      print(node.value);
      inOrder(node.right);
    }
  }

  inOrderdisplay() {
    inOrder(root);
  }

  bool search(int value) {
    Node? currentnode = root;
    while (currentnode != null) {
      if (value < currentnode.value) {
        currentnode = currentnode.left;
      } else if (value > currentnode.value) {
        currentnode = currentnode.left;
      } else {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  binarysearchtree tree=binarysearchtree();
  tree.insert(14);
  tree.insert(66);
  tree.insert(36);
  tree.inOrderdisplay();
  print(tree.isBST(tree.root));

}