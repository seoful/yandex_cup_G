import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_hint_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_model.dart';
import 'package:yandex_cup_task_2/features/constructor/managers/constructor_manager.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/text_field_question_constructor_page/notifier/text_field_question_constructor_notifier.dart';

class TextFieldQuestionConstructorPage extends HookConsumerWidget {
  const TextFieldQuestionConstructorPage({Key? key, this.step})
      : super(key: key);
  final EditTextFieldQuestionModel? step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(textFieldQuestionConstructorNotifierProvider(step));
    final questionController =
        useTextEditingController(text: step?.question ?? "");
    final answerController = useTextEditingController(text: step?.answer ?? "");

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
                        .read(textFieldQuestionConstructorNotifierProvider(step)
                            .notifier)
                        .updateQuestion(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: answerController,
                  decoration: const InputDecoration(hintText: "Answer"),
                  onChanged: (value) {
                    ref
                        .read(textFieldQuestionConstructorNotifierProvider(step)
                            .notifier)
                        .updateAnswer(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                state.hints.isEmpty
                    ? ElevatedButton(
                        onPressed: () {
                          _addHint(ref);
                        },
                        child: const Text("Add hint"),
                      )
                    : _HintWidget(
                        key: ValueKey(state.hints.length),
                        hint: state.hints[0],
                        onTextChanged: (text) {
                          _updateHint(ref, 0, text, null);
                        },
                        onSecondsChanged: (text) {
                          _updateHint(ref, 0, null, int.tryParse(text) ?? 0);
                        },
                        onDeletePressed: () {
                          _deleteHint(ref, 0);
                        },
                      ),
                if (state.hints.isNotEmpty)
                  state.hints.length != 2
                      ? ElevatedButton(
                          onPressed: () {
                            _addHint(ref);
                          },
                          child: const Text("Add hint"),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _HintWidget(
                            // key: ValueKey(state.hints[1].hashCode),
                            hint: state.hints[1],
                            onTextChanged: (text) {
                              _updateHint(ref, 1, text, null);
                            },
                            onSecondsChanged: (text) {
                              _updateHint(ref, 1, null, int.tryParse(text) ?? 0);
                            },
                            onDeletePressed: () {
                              _deleteHint(ref, 1);
                            },
                          ),
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _addHint(WidgetRef ref) {
    ref
        .read(textFieldQuestionConstructorNotifierProvider(step).notifier)
        .addHint();
  }

  void _updateHint(WidgetRef ref, int index, String? text, int? seconds) {
    ref
        .read(textFieldQuestionConstructorNotifierProvider(step).notifier)
        .updateHint(index, text, seconds);
  }

  void _deleteHint(WidgetRef ref, int index) {
    ref
        .read(textFieldQuestionConstructorNotifierProvider(step).notifier)
        .deleteHint(index);
  }
}

class _HintWidget extends HookWidget {
  const _HintWidget({
    Key? key,
    required this.hint,
    required this.onTextChanged,
    required this.onSecondsChanged,
    required this.onDeletePressed,
  }) : super(key: key);

  final EditTextFieldQuestionHintModel hint;
  final void Function(String text) onTextChanged;
  final void Function(String text) onSecondsChanged;
  final void Function() onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: hint.text ?? "");
    final secondsController =
        useTextEditingController(text: hint.secondsToShow.toString());

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Hint: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Type something...",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                        controller: textController,
                        onChanged: onTextChanged,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Show hint after ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "0",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                        controller: secondsController,
                        onChanged: onSecondsChanged,
                      ),
                    ),
                    const Text(
                      " seconds.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
