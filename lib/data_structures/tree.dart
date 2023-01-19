import 'dart:collection';
import 'dart:io';

//import 'package:json_annotation/json_annotation.dart';

//part 'tree.g.dart';

//@JsonSerializable()
class Node2<T> {
  Node2<T>? left;
  Node2<T>? right;
  T? data;

  Node2({this.data, this.left, this.right});

  @override
  String toString() {
    String l = left.runtimeType.toString();
    String r = right.runtimeType.toString();
    String? lData = left?.data.toString();
    String? rData = right?.data.toString();
    return "data: $data, left: $l $lData, right: $r $rData";
  }

  //factory Node2.fromJson(Map<String, dynamic> json) => _$Node2FromJson<T>(json);
  //Map<String, dynamic> toJson() => _$Node2ToJson(this);
}

void main() {
  Node2<int> tree = Node2<int>(
    data: 2,
    left: Node2<int>(data: 1),
    right: Node2<int>(
        data: 3,
        left: Node2<int>(
          data: 4,
        )),
  );

  //printInOrder(tree);
  printTree(tree);
}

void printInOrder<T>(Node2<T>? tree) {
  if (tree == null) return;

  if (tree.left != null) printInOrder(tree.left);
  if (tree.data != null) print(tree.data);
  if (tree.right != null) printInOrder(tree.right);
}

void printPreOrderDynamically<T>(Node2<T>? tree) {
  if (tree == null) return;

  Queue<Node2?> queue = new Queue<Node2?>();
  queue.add(tree);

  Node2? node;
  while (queue.length > 0) {
    node = queue.removeFirst();
    if (node == null) continue;

    if (node.data != null) print(node.data);
    if (node.left != null) queue.add(node.left);
    if (node.right != null) queue.add(node.right);
  }
}

void printTree<T>(Node2<T>? tree) {
  if (tree == null) return;

  Queue<Node2?> queueCurrent = new Queue<Node2?>();
  Queue<Node2?> queueNext = new Queue<Node2?>();

  queueCurrent.add(tree);
  Node2? node;

  do {
    while (queueCurrent.length > 0) {
      node = queueCurrent.removeFirst();
      if (node == null) continue;

      if (node.data != null) stdout.write(node.data.toString() + " ");
      if (node.left != null) queueNext.add(node.left);
      if (node.right != null) queueNext.add(node.right);
    }
    if (queueNext.length > 0) {
      queueCurrent = queueNext;
      queueNext = new Queue<Node2?>();
    }
    print("");
  } while (queueCurrent.length > 0);
}
