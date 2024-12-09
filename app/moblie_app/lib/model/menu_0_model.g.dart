// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_0_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Menu0ModelImpl _$$Menu0ModelImplFromJson(Map<String, dynamic> json) =>
    _$Menu0ModelImpl(
      datas: (json['datas'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      step: (json['step'] as num?)?.toInt() ?? 0,
      index: (json['index'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$Menu0ModelImplToJson(_$Menu0ModelImpl instance) =>
    <String, dynamic>{
      'datas': instance.datas,
      'step': instance.step,
      'index': instance.index,
    };
