// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';

part 'constructor_state.freezed.dart';

@freezed
class ConstructorState with _$ConstructorState {
  factory ConstructorState({
    required List<QuestStep> steps,
  }) = _ConstructorState;
}