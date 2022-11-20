import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/step_history_state_holder/step_history_state.dart';

class StepHistoryNotifier extends StateNotifier<StepHistoryState> {
  StepHistoryNotifier() : super(StepHistoryState.empty());

  void addStep(HistoryStep step) {
    final currentList = state.when(
      data: (steps) => steps,
      empty: () => <HistoryStep>[],
    );
    final list = List<HistoryStep>.from(currentList);
    list.add(step);
    state = StepHistoryState.data(steps: list);
  }
}

final stepHistoryStateNotifierProvider =
    StateNotifierProvider<StepHistoryNotifier, StepHistoryState>((ref) {
  return StepHistoryNotifier();
});
