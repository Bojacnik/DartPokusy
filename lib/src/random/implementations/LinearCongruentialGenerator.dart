import '../abstractions/Random.dart';

class LinearCongruentialGenerator32 extends Random {
  static const int a = 32983223;
  static const int c = 1;

  late final int seed;
  late int last;
  LinearCongruentialGenerator32({int? seed = null}) {
    if (seed != null)
      this.seed = seed;
    else
      this.seed = DateTime.now().microsecond;

    last = this.seed;
  }

  num next() {
    last = (last * a) + c;
    return last;
  }
}

void main() {
  Random rdm = new LinearCongruentialGenerator32();

  for (int i = 0; i < 100; i++) {
    num pseudorandom = rdm.next();
    num i = pseudorandom % 100;
    print(i);
  }
}
