// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clovek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clovek _$ClovekFromJson(Map<String, dynamic> json) => Clovek(
      jmeno: json['jmeno'] as String,
      prijmeni: json['prijmeni'] as String,
      vek: json['vek'] as int,
    );

Map<String, dynamic> _$ClovekToJson(Clovek instance) => <String, dynamic>{
      'jmeno': instance.jmeno,
      'prijmeni': instance.prijmeni,
      'vek': instance.vek,
    };
