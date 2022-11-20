import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/current_step_state_holder/current_step_state.dart';

class CurrentStepNotifier extends StateNotifier<CurrentStepState> {
  CurrentStepNotifier() : super(CurrentStepState.questNotChosen());

  void updateState(CurrentStepState state) {
    this.state = state;
  }

  void changeStep(QuestStep step) {
    state = CurrentStepState.step(step: step);
  }

  CurrentStepState get currentState => state;
}

final currentStepStateNotifierProvider =
    StateNotifierProvider.autoDispose<CurrentStepNotifier, CurrentStepState>((ref) {
  return CurrentStepNotifier();
});
