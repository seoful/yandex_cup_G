import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_answer.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_question_model.dart';
import 'package:yandex_cup_task_2/features/constructor/managers/constructor_manager.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/multiple_choice_constructor_page/notifier/multiple_choice_question_constructor_notifier.dart';

class MultipleChoiceQuestionConstructorPage extends HookConsumerWidget {
  const MultipleChoiceQuestionConstructorPage({Key? key, this.step})
      : super(key: key);
  final EditMultipleChoiceQuestionModel? step;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(multipleChoiceQuestionConstructorNotifierProvider(step));
    final questionController =
        useTextEditingController(text: step?.question ?? "");

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (state.validate()) {
                final manager = ref.read(constructorManagerProvider);
                step == null
                    ? manager.saveAddStep(state.toQuestStep())
                    : manager.saveEditStep(state.toQuestStep());
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Make sure everything is filled")));
              }
            },
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: questionController,
                  decoration: const InputDecoration(hintText: "Question"),
                  onChanged: (value) {
                    ref
                        .read(multipleChoiceQuestionConstructorNotifierProvider(
                                step)
                            .notifier)
                        .updateQuestion(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                _AnswerWidget(
                  key: ValueKey(state.answers.length.toString() + "0"),
                  answer: state.answers[0],
                  onTextChanged: (text) {
                    _updateAnswer(ref, 0, text, null);
                  },
                  onCheckboxChanged: (value) {
                    _updateAnswer(ref, 0, null, value ?? false);
                  },
                  onDeletePressed: () {
                    _deleteAnswer(ref, 0);
                  },
                ),
                _AnswerWidget(
                  key: ValueKey(state.answers.length.toString() + "1"),
                  answer: state.answers[1],
                  onTextChanged: (text) {
                    _updateAnswer(ref, 1, text, null);
                  },
                  onCheckboxChanged: (value) {
                    _updateAnswer(ref, 1, null, value ?? false);
                  },
                  onDeletePressed: () {
                    _deleteAnswer(ref, 1);
                  },
                ),
                if (state.answers.length >= 2)
                  state.answers.length == 2
                      ? ElevatedButton(
                          onPressed: () {
                            _addAnswer(ref);
                          },
                          child: const Text("Add hint"),
                        )
                      : _AnswerWidget(
                          isOptional: true,
                          key: ValueKey(state.answers.length.toString() + "2"),
                          answer: state.answers[2],
                          onTextChanged: (text) {
                            _updateAnswer(ref, 2, text, null);
                          },
                          onCheckboxChanged: (value) {
                            _updateAnswer(ref, 2, null, value ?? false);
                          },
                          onDeletePressed: () {
                            _deleteAnswer(ref, 2);
                          },
                        ),
                if (state.answers.length >= 3)
                  state.answers.length == 3
                      ? ElevatedButton(
                          onPressed: () {
                            _addAnswer(ref);
                          },
                          child: const Text("Add hint"),
                        )
                      : _AnswerWidget(
                          isOptional: true,
                          // key: ValueKey(state.hints[1].hashCode),
                          answer: state.answers[3],
                          onTextChanged: (text) {
                            _updateAnswer(ref, 3, text, null);
                          },
                          onCheckboxChanged: (value) {
                            _updateAnswer(ref, 3, null, value ?? false);
                          },
                          onDeletePressed: () {
                            _deleteAnswer(ref, 3);
                          },
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _deleteAnswer(WidgetRef ref, int index) {
    ref
        .read(multipleChoiceQuestionConstructorNotifierProvider(step).notifier)
        .deleteAnswer(index);
  }

  void _updateAnswer(WidgetRef ref, int index, String? text, bool? isCorrect) {
    ref
        .read(multipleChoiceQuestionConstructorNotifierProvider(step).notifier)
        .updateAnswer(index, text, isCorrect);
  }

  void _addAnswer(WidgetRef ref) {
    ref
        .read(multipleChoiceQuestionConstructorNotifierProvider(step).notifier)
        .addAnswer();
  }
}

class _AnswerWidget extends HookWidget {
  const _AnswerWidget({
    Key? key,
    this.isOptional = false,
    required this.answer,
    required this.onTextChanged,
    required this.onCheckboxChanged,
    required this.onDeletePressed,
  }) : super(key: key);

  final bool isOptional;
  final EditMultipleChoiceAnswer answer;
  final void Function(String text) onTextChanged;
  final void Function(bool? value) onCheckboxChanged;
  final void Function() onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: answer.text ?? "");

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Checkbox(value: answer.isCorrect, onChanged: onCheckboxChanged),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Answer variant${isOptional ? ' (Optional)' : ''}",
                hintStyle: TextStyle(fontSize: 14),
              ),
              controller: textController,
              onChanged: onTextChanged,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          if (isOptional)
            IconButton(
              onPressed: onDeletePressed,
              icon: const Icon(
                Icons.delete_forever_outlined,
                color: Colors.red,
              ),
            ),
        ],
      ),
    );
  }
}
