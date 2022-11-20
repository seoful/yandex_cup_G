// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';

part 'step_history_state.freezed.dart';

@freezed
class StepHistoryState with _$StepHistoryState {
  factory StepHistoryState.data({
    required List<HistoryStep> steps,
  }) = StepHistoryStateData;
  factory StepHistoryState.empty() = StepHistoryStateempty;
}
