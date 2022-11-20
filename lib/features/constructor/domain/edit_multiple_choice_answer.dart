// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/answer_variant.dart';

part 'edit_multiple_choice_answer.freezed.dart';

@freezed
class EditMultipleChoiceAnswer with _$EditMultipleChoiceAnswer {
  EditMultipleChoiceAnswer._();

  factory EditMultipleChoiceAnswer({
    String? text,
    @Default(false) bool isCorrect,
  }) = _EditMultipleChoiceAnswer;

  factory EditMultipleChoiceAnswer.fromAnswer(AnswerVariant answer) =>
      EditMultipleChoiceAnswer(text: answer.text, isCorrect: answer.isCorrect);

  bool validate() {
    return text != null && text!.isNotEmpty;
  }

  AnswerVariant toAnswerVariant() =>
      AnswerVariant(text: text!, isCorrect: isCorrect);
}
