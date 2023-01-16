import 'package:injectable/injectable.dart';

abstract class Zvire {
  int arms;
  int legs;

  String? sound;

  Zvire(this.arms, this.legs, {this.sound});

  void makesound() {
    print(sound);
  }
}

@Singleton(as: Zvire)
class Jelen extends Zvire {
  Jelen(int arms, int legs, String? sound) : super(arms, legs, sound: sound);

  factory Jelen.normalni() {
    return Jelen(0, 2, "JelenZvuk");
  }
}
