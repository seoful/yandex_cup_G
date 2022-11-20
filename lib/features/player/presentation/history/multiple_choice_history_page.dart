import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';

class MultipleChoiceHistoryPage extends HookConsumerWidget {
  const MultipleChoiceHistoryPage({Key? key, required this.step})
      : super(key: key);

  final HistoryStepChoice step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(step.step.question),
              const SizedBox(
                height: 20,
              ),
              for (int i = 0; i < step.step.answers.length; i++)
                Container(
                  decoration: BoxDecoration(
                    color: step.chosenAnswerIndex == i
                        ? step.step.answers[i].isCorrect
                            ? Colors.green.withOpacity(0.3)
                            : Colors.red.withOpacity(0.3)
                        : Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(step.step.answers[i].text),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
