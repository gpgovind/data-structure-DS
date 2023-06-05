import 'package:flutter/material.dart';

class Node {
  int value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BinarySearchTree {
  Node? root;

  insert(int value) {
    Node? currentNode = root;

    if (currentNode == null) {
      root = Node(value);
    }

    while (true) {
      if (value < currentNode!.value) {
        if (currentNode.left == null) {
          currentNode.left = Node(value);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else if (value > currentNode.value) {
        if (currentNode.right == null) {
          currentNode.right = Node(value);
          break;
        } else {
          currentNode = currentNode.right;
        }
      } else {
        break;
      }
    }
  }

  preOrderTraverse(Node? node) {
    if (node != null) {
      print(node.value);
      preOrderTraverse(node.left);
      preOrderTraverse(node.right);
    }
  }

  preDisplay() {
    preOrderTraverse(root);
  }

  inOrderTraverse(Node? node) {
    if (node != null) {
      inOrderTraverse(node.left);
      print(node.value);
      inOrderTraverse(node.right);
    }
  }

  inOrder() {
    inOrderTraverse(root);
  }


  bool search(int value) {
    Node? currentNode = root;

    while (currentNode != null) {
      if (value < currentNode.value) {
        currentNode = currentNode.left;
      } else if (value > currentNode.value) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }


}
