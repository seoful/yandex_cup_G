// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_hint_model.dart';

part 'edit_text_field_question_model.freezed.dart';

@freezed
class EditTextFieldQuestionModel with _$EditTextFieldQuestionModel {
  EditTextFieldQuestionModel._();
  factory EditTextFieldQuestionModel({
    String? question,
    String? answer,
    @Default([]) List<EditTextFieldQuestionHintModel> hints,
  }) = _EditTextFieldQuestionModel;

  factory EditTextFieldQuestionModel.fromQuestStep(QuestStepTextField step) =>
      EditTextFieldQuestionModel(
        answer: step.answer,
        hints: step.hints
            .map((e) => EditTextFieldQuestionHintModel(
                text: e.text, secondsToShow: e.secondsBeforeShow))
            .toList(),
            question: step.question,
      );

  bool validate() =>
      question != null &&
      question!.isNotEmpty &&
      answer != null &&
      answer!.isNotEmpty &&
      hints.fold(
        true,
        (previousValue, element) => previousValue && element.validate(),
      );

  QuestStep toQuestStep() => QuestStep.textField(
        question: question!,
        answer: answer!,
        hints: hints.map((e) => e.toHint()).toList(),
      );
}
