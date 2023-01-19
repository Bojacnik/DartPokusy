//import 'package:json_annotation/json_annotation.dart';

class avlTree<T> {
  avlNode<T>? root;

  avlTree(this.root);

  //TODO: IMPLEMENT INSERT
  //TODO: IMPLEMENT REMOVE
  //TODO: IMPLEMENT FIND

  //implement rotations

  /// Use the right node as input
  void LL(avlNode<T> node) {
    avlNode<T> exRight = node;
    avlNode<T> exRoot = node.parent!;
    avlNode<T>? exLeft = node.parent?.left;
    if (exLeft != null) {
      print('Left is not null');
      exLeft.parent = exRoot;
      //everything done for exLeft (except height)
    } else {
      print('Left is null!');
    }

    avlNode<T>? above = exRoot.parent;

    exRoot.right = exRight.left;
    exRoot.parent = exRight;
    //everything done for exRoot (except height)

    exRight.left = exRoot;
    exRight.parent = above;

    if (exRoot == above?.left) {
      above?.left = exRight;
    } else if (exRoot == above?.right) {
      above?.right = exRight;
    } else {
      print("this should not happen");
      throw Error();
    }
  }

  ///Use the left node as input
  void RR(avlNode<T> node) {
    avlNode<T> exLeft = node;
    avlNode<T> exRoot = node.parent!;
    avlNode<T> exRight = node.parent!.left!;

    avlNode<T> above = exRoot.parent!;

    exRight.parent = exRoot;

    exRoot.left = exRight.left;
    exRoot.parent = exLeft;

    exLeft.right = exRoot;
    exLeft.parent = above;

    if (exRoot == above.left) {
      above.left = exLeft;
    } else if (exRoot == above.right) {
      above.right = exLeft;
    } else {
      // this should not happen
      throw Error();
    }
  }

  void LR() {}

  void RL() {}

  @override
  String toString() {
    return root.toString();
  }
}

class avlNode<T> {
  T data;
  avlNode<T>? parent;
  avlNode<T>? left;
  avlNode<T>? right;
  int height;

  avlNode(this.data, this.parent, this.left, this.right, this.height);

  @override
  String toString() {
    return "$data $left $right";
  }
}

void main() {
  avlTestRozdelane();
}

void avlTestRozdelane() {
  avlNode<int> mostRight = avlNode<int>(30, null, null, null, 0);
  avlNode<int> right = avlNode<int>(20, null, null, mostRight, 0);
  avlNode<int> root = avlNode(10, null, null, right, 0);

  right.parent = root;
  mostRight.parent = right;

  avlTree<int> avl = new avlTree<int>(root);

  try {
    avl.LL(root.right!);
  } on Error {
    print("Something fucked up");
  }
  print("Vysledek: \n" + avl.toString());
}
