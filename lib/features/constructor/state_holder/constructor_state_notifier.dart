import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/state_holder/constructor_state.dart';

class ConstructorStateNotifier extends StateNotifier<ConstructorState> {
  ConstructorStateNotifier() : super(ConstructorState(steps: []));

  void updateState(ConstructorState state) {
    this.state = state;
  }

  ConstructorState get currentState => state;
}

final constructorStateNotifierProvider =
    StateNotifierProvider<ConstructorStateNotifier, ConstructorState>((ref) {
  return ConstructorStateNotifier();
});
