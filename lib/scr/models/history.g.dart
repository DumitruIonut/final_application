// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$History$ _$$History$FromJson(Map<String, dynamic> json) => _$History$(
      time: (json['time'] as num?)?.toDouble() ?? 0.0,
      value: (json['value'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$History$ToJson(_$History$ instance) => <String, dynamic>{
      'time': instance.time,
      'value': instance.value,
    };
