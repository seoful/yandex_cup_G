import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';

class TextFieldHistoryPage extends HookConsumerWidget {
  const TextFieldHistoryPage({Key? key, required this.step}) : super(key: key);

  final HistoryStepTextField step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(step.step.question),
              const SizedBox(
                height: 20,
              ),
              Text("Answer: ${step.step.answer}"),
              const SizedBox(
                height: 20,
              ),
              if (step.firstHintIsShown) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text("Hint: " + step.step.hints[0].text),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
              if (step.secondHintIsShown) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text("Hint: " + step.step.hints[1].text),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
