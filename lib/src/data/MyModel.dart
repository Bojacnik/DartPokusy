import 'package:json_annotation/json_annotation.dart';

part 'MyModel.g.dart';

@JsonSerializable()
class MyModel {
  int id;
  String name;

  MyModel(this.id, this.name);

  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyModelToJson(this);
}

@JsonSerializable()
class FinalMyModel {
  final int id;
  final String khaamo;

  FinalMyModel(this.id, this.khaamo);

  factory FinalMyModel.fromJson(Map<String, dynamic> json) =>
      _$FinalMyModelFromJson(json);
  Map<String, dynamic> toJson() => _$FinalMyModelToJson(this);
}
