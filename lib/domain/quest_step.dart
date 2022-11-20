// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/answer_variant.dart';
import 'package:yandex_cup_task_2/domain/hint.dart';
import 'package:yandex_cup_task_2/domain/slide.dart';

part 'quest_step.freezed.dart';
part 'quest_step.g.dart';

@freezed
class QuestStep with _$QuestStep {
  factory QuestStep.slides({
    required List<Slide> slides,
  }) = QuestStepSlides;

  factory QuestStep.textField({
    required String question,
    required String answer,
    @Default([])List<Hint> hints,
  }) = QuestStepTextField;

  factory QuestStep.choice({
    required String question,
    required List<AnswerVariant> answers,
  }) = QuestStepChoice;

  factory QuestStep.fromJson(Map<String, dynamic> json) =>
      _$QuestStepFromJson(json);
}

enum StepType {
  slides,
  textField,
  choice, 
}
