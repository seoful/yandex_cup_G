import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_hint_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_model.dart';

class TextFieldQuestionConstructorNotifier
    extends StateNotifier<EditTextFieldQuestionModel> {
  TextFieldQuestionConstructorNotifier(EditTextFieldQuestionModel? initialState)
      : super(initialState ?? EditTextFieldQuestionModel());

  void updateQuestion(String question) {
    state = state.copyWith(question: question);
  }

  void updateAnswer(String answer) {
    state = state.copyWith(answer: answer.toLowerCase());
  }

  void addHint() {
    final hints = List<EditTextFieldQuestionHintModel>.from(state.hints);
    hints.add(EditTextFieldQuestionHintModel());
    state = state.copyWith(hints: hints);
  }

  void updateHint(int index, String? text, int? seconds) {
    final hints = List<EditTextFieldQuestionHintModel>.from(state.hints);
    var newHint = hints[index];
    text = text == "" ? null : text;

    if (text == null && seconds != null) {
      newHint = hints[index].copyWith(secondsToShow: seconds);
    } else if (text != null && seconds == null) {
      newHint = hints[index].copyWith(text: text);
    }
    hints
      ..removeAt(index)
      ..insert(index, newHint);
    state = state.copyWith(hints: hints);
  }

  void deleteHint(int index) {
    final hints = List<EditTextFieldQuestionHintModel>.from(state.hints);
    hints.removeAt(index);
    state = state.copyWith(hints: hints);
  }
}

final textFieldQuestionConstructorNotifierProvider =
    StateNotifierProvider.autoDispose.family<
        TextFieldQuestionConstructorNotifier,
        EditTextFieldQuestionModel,
        EditTextFieldQuestionModel?>((ref, initialState) {
  return TextFieldQuestionConstructorNotifier(initialState);
});
