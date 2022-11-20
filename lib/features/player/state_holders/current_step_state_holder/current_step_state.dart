// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';

part 'current_step_state.freezed.dart';

@freezed
class CurrentStepState with _$CurrentStepState {
  factory CurrentStepState.step({
    required QuestStep step,
  }) = CurrentStepStateStep;
  factory CurrentStepState.start() = CurrentStepStateStart;
  factory CurrentStepState.end() = CurrentStepStateEnd;
  factory CurrentStepState.loading() = CurrentStepStateLoading;
  factory CurrentStepState.error() = CurrentStepStateError;
  factory CurrentStepState.questNotChosen() = CurrentStepStateNotChosen;
}
