import 'stream_helper.dart';

Iterable<int> posloup(int start, int d) sync* {
  int next = start;
  for (int i = 0; i < 5; i++) {
    next = next + d;
    yield next;
  }
}

Stream<int> posloupAsync(int start, int d) async* {
  int next = start;
  for (int i = 0; i < 5; i++) {
    next = next + d;
    yield next;
  }
}

void testtttt() {
  Iterable<int> a = posloup(0, 2);
  print(a);

  Stream<int> b = posloupAsync(0, 2);
  printStream(b);
}
