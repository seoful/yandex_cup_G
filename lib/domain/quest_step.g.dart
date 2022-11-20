// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestStepSlides _$$QuestStepSlidesFromJson(Map<String, dynamic> json) =>
    _$QuestStepSlides(
      slides: (json['slides'] as List<dynamic>)
          .map((e) => Slide.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuestStepSlidesToJson(_$QuestStepSlides instance) =>
    <String, dynamic>{
      'slides': instance.slides,
      'runtimeType': instance.$type,
    };

_$QuestStepTextField _$$QuestStepTextFieldFromJson(Map<String, dynamic> json) =>
    _$QuestStepTextField(
      question: json['question'] as String,
      answer: json['answer'] as String,
      hints: (json['hints'] as List<dynamic>?)
              ?.map((e) => Hint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuestStepTextFieldToJson(
        _$QuestStepTextField instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'hints': instance.hints,
      'runtimeType': instance.$type,
    };

_$QuestStepChoice _$$QuestStepChoiceFromJson(Map<String, dynamic> json) =>
    _$QuestStepChoice(
      question: json['question'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuestStepChoiceToJson(_$QuestStepChoice instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answers': instance.answers,
      'runtimeType': instance.$type,
    };
