import 'dart:math';

import 'tree.dart' hide main;

void main() {
  main2();
}

void main2() {
  IntBinaryTree tree = new IntBinaryTree(
    Node2(data: 1 << 16, left: null, right: null),
  );

  Random rdm = Random.secure();
  int lastrandom = rdm.nextInt(1 << 32);
  printTree(tree.root);
  for (int i = 0; i < 15; i++) {
    tree.addLeaf(
      rdm.nextInt(1 << 32),
    );
  }
  tree.addLeaf(lastrandom);

  printInOrder(tree.root);
}

void main3() {
  IntBinaryTree ibt = IntBinaryTree(
    Node2(
      data: 5,
      left: null,
      right: null,
    ),
  );
  //printInOrder<int>(ibt.root);
  ibt.addLeaf(3);
  ibt.addLeaf(4);
  printInOrder<int>(ibt.root);
}

class IntBinaryTree {
  Node2<int> root;

  IntBinaryTree(this.root);

  void addLeaf(int data) {
    if (root.data == null)
      throw Exception("Binary Tree has a Root element with null data");

    addLeafRecursively(data, root);
  }

  void addLeafRecursively(int data, Node2<int> node) {
    if (node.data == data)
      return;
    else if (node.data! > data) {
      if (node.left != null)
        addLeafRecursively(data, node.left!);
      else {
        node.left = Node2(data: data, left: null, right: null);
      }
    } else if (node.data! < data) {
      if (node.right != null) {
        addLeafRecursively(data, node.right!);
      } else {
        node.right = Node2(data: data, left: null, right: null);
      }
    }
  }

  Node2<int>? search(int data) {
    if (root.data == null) {
      throw Exception("Binary Tree has a Root element with null data");
    }

    return searchRecursively(data, root);
  }

  Node2<int>? searchRecursively(int data, Node2<int> node) {
    if (data == node.data)
      return node;
    else if (data < node.data!) {
      if (node.left != null)
        return searchRecursively(data, node.left!);
      else {
        return null;
      }
    } else if (data > node.data!) {
      if (node.right != null)
        return searchRecursively(data, node.right!);
      else {
        return null;
      }
    }
    throw new Error();
  }
}
