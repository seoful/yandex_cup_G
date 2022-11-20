// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quest _$$_QuestFromJson(Map<String, dynamic> json) => _$_Quest(
      name: json['name'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => QuestStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestToJson(_$_Quest instance) => <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };
