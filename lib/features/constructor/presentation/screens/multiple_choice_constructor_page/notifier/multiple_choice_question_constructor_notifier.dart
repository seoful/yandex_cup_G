import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_answer.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_question_model.dart';

class MultipleChoiceQuestionConstructorNotifier
    extends StateNotifier<EditMultipleChoiceQuestionModel> {
  MultipleChoiceQuestionConstructorNotifier(
      EditMultipleChoiceQuestionModel? initialState)
      : super(initialState ??
            EditMultipleChoiceQuestionModel(
              answers: [
                EditMultipleChoiceAnswer(),
                EditMultipleChoiceAnswer(),
              ],
            ));

  void updateQuestion(String question) {
    state = state.copyWith(question: question);
  }

  void addAnswer() {
    final answers = List<EditMultipleChoiceAnswer>.from(state.answers);
    answers.add(EditMultipleChoiceAnswer());
    state = state.copyWith(answers: answers);
  }

  void updateAnswer(int index, String? text, bool? isCorrect) {
    final answers = List<EditMultipleChoiceAnswer>.from(state.answers);
    var newAnswer = answers[index];
    text = text == "" ? null : text;

    if (text == null && isCorrect != null) {
      newAnswer = answers[index].copyWith(isCorrect: isCorrect);
    } else if (text != null && isCorrect == null) {
      newAnswer = answers[index].copyWith(text: text);
    }
    answers
      ..removeAt(index)
      ..insert(index, newAnswer);
    state = state.copyWith(answers: answers);
  }

  void deleteAnswer(int index) {
    final answers = List<EditMultipleChoiceAnswer>.from(state.answers);
    answers.removeAt(index);
    state = state.copyWith(answers: answers);
  }
}

final multipleChoiceQuestionConstructorNotifierProvider =
    StateNotifierProvider.autoDispose.family<
        MultipleChoiceQuestionConstructorNotifier,
        EditMultipleChoiceQuestionModel,
        EditMultipleChoiceQuestionModel?>((ref, initialState) {
  return MultipleChoiceQuestionConstructorNotifier(initialState);
});
