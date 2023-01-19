import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clovek.g.dart';

@JsonSerializable()
class Clovek extends Equatable {
  final String jmeno;
  final String prijmeni;
  final int vek;

  Clovek({
    required this.jmeno,
    required this.prijmeni,
    required this.vek,
  });

  @override
  String toString() {
    return "$jmeno, $prijmeni, $vek";
  }

  factory Clovek.fromJson(Map<String, dynamic> json) => _$ClovekFromJson(json);
  Map<String, dynamic> toJson() => _$ClovekToJson(this);

  @override
  List<Object?> get props => [jmeno, prijmeni, vek];
}

void main() {
  Clovek c = new Clovek(
    vek: 45,
    jmeno: "Vlastimil",
    prijmeni: "Jelito",
  );
  print(c);
}
