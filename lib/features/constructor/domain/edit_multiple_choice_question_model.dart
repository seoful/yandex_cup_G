// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_answer.dart';

part 'edit_multiple_choice_question_model.freezed.dart';

@freezed
class EditMultipleChoiceQuestionModel with _$EditMultipleChoiceQuestionModel {
  EditMultipleChoiceQuestionModel._();

  factory EditMultipleChoiceQuestionModel({
    String? question,
    @Default([]) List<EditMultipleChoiceAnswer> answers,
  }) = _EditMultipleChoiceQuestionModel;

  factory EditMultipleChoiceQuestionModel.fromQuestStep(QuestStepChoice step) =>
      EditMultipleChoiceQuestionModel(
        question: step.question,
        answers: step.answers
            .map((e) => EditMultipleChoiceAnswer.fromAnswer(e))
            .toList(),
      );

  bool validate() =>
      question != null &&
      question!.isNotEmpty &&
      answers.length >= 2 &&
      answers.fold(
        true,
        (previousValue, element) => previousValue && element.validate(),
      ) && answers.fold(
        false,
        (previousValue, element) => previousValue || element.isCorrect,
      );

  QuestStep toQuestStep() => QuestStep.choice(
        question: question!,
        answers: answers.map((e) => e.toAnswerVariant()).toList(),
      );
}
