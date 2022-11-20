// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/hint.dart';

part 'edit_text_field_question_hint_model.freezed.dart';

@freezed
class EditTextFieldQuestionHintModel with _$EditTextFieldQuestionHintModel {
  EditTextFieldQuestionHintModel._();
  factory EditTextFieldQuestionHintModel({
    String? text,
    @Default(0) int secondsToShow,
  }) = _EditTextFieldQuestionHintModel;

  factory EditTextFieldQuestionHintModel.fromHint(Hint hint) =>
      EditTextFieldQuestionHintModel(text: hint.text, secondsToShow: hint.secondsBeforeShow);

  bool validate() => text != null && text!.isNotEmpty;

  Hint toHint() => Hint(text: text!, secondsBeforeShow: secondsToShow);
}
