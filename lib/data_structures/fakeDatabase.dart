import 'dart:math';

import 'binary_tree.dart';
import 'tree.dart';

IntBinaryTree? ibt;
void init({rootValue = (1 << 32) ~/ 2, hasSampleData: false}) {
  if (ibt == null)
    ibt = new IntBinaryTree(
      Node2(data: rootValue, left: null, right: null),
    );
}

void add(int value) {
  ibt?.addLeaf(value);
}

Node2<int>? find(int value) {
  Node2<int>? result = ibt?.search(value);
  return result;
}

void addSampleData() {
  Random rdm = Random.secure();
  for (int i = 0; i < 300000; i++) {
    ibt?.addLeaf(
      rdm.nextInt(1 << 32),
    );
  }
}
