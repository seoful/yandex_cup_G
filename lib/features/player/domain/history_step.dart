// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';

part 'history_step.freezed.dart';

@freezed
class HistoryStep with _$HistoryStep {
  factory HistoryStep.slides({
    required QuestStepSlides step,
  }) = HistoryStepSlides;
  factory HistoryStep.textField({
    required QuestStepTextField step,
    required bool firstHintIsShown,
    required bool secondHintIsShown,
  }) = HistoryStepTextField;
  factory HistoryStep.choice({
    required QuestStepChoice step,
    required int chosenAnswerIndex,
  }) = HistoryStepChoice;

}
