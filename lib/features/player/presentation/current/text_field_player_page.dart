import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/player/managers/player_manager.dart';

class TextFieldPlayerPage extends HookConsumerWidget {
  const TextFieldPlayerPage({Key? key, required this.step}) : super(key: key);

  final QuestStepTextField step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answerController = useTextEditingController();

    final timeToFirstHint =
        useState(step.hints.isNotEmpty ? step.hints[0].secondsBeforeShow : -1);
    final timeToSecondHint =
        useState(step.hints.length == 2 ? step.hints[1].secondsBeforeShow : -1);

    final timers = useMemoized(
      () {
        final timers = <Timer>[];
        if (step.hints.isNotEmpty)
          timers.add(Timer.periodic(
            Duration(seconds: 1),
            (timer) {
              timeToFirstHint.value = timeToFirstHint.value - 1;
              if (timeToFirstHint.value <= 0) timer.cancel();
            },
          ));
        if (step.hints.length == 2)
          timers.add(Timer.periodic(
            Duration(seconds: 1),
            (timer) {
              timeToSecondHint.value = timeToSecondHint.value - 1;
              if (timeToSecondHint.value <= 0) timer.cancel();
            },
          ));
        return timers;
      },
    );

    return SingleChildScrollView(
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(step.question),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: answerController,
                decoration: const InputDecoration(hintText: "Answer"),
              ),
              const SizedBox(
                height: 20,
              ),
              if (step.hints.isNotEmpty) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: timeToFirstHint.value > 0
                      ? Text("${timeToFirstHint.value} seconds before hint")
                      : Text("Hint: " + step.hints[0].text),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
              if (step.hints.length == 2) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: timeToSecondHint.value > 0
                      ? Text("${timeToSecondHint.value} seconds before hint")
                      : Text("Hint: " + step.hints[1].text),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
              TextButton(
                onPressed: () {
                  if (answerController.text.toLowerCase() ==
                      step.answer.toLowerCase()) {
                    timers.forEach((element) {
                      element.cancel();
                    });
                    ref.read(playerManagerProvider).nextStep(userInput: [
                      step.hints.isNotEmpty && timeToFirstHint.value <= 0,
                      step.hints.length == 2 && timeToSecondHint.value <= 0
                    ]);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Wrong answer.Try again")));
                  }
                },
                child: Text("Check"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
