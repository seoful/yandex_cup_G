import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/components/animated_button.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/player/managers/player_manager.dart';

class MultipleChoicePlayerPage extends HookConsumerWidget {
  const MultipleChoicePlayerPage({Key? key, required this.step})
      : super(key: key);

  final QuestStepChoice step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chosenAnswer = useState<int?>(null);

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
              Text(step.question),
              const SizedBox(
                height: 20,
              ),
              for (int i = 0; i < step.answers.length; i++)
                AnimatedButton(
                  onTap: () {
                    if (chosenAnswer.value == null) chosenAnswer.value = i;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: chosenAnswer.value == i
                          ? step.answers[i].isCorrect
                              ? Colors.green.withOpacity(0.3)
                              : Colors.red.withOpacity(0.3)
                          : Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(step.answers[i].text),
                  ),
                ),
              if (chosenAnswer.value != null)
                step.answers[chosenAnswer.value!].isCorrect
                    ? ElevatedButton(
                        onPressed: () {
                          ref
                              .read(playerManagerProvider)
                              .nextStep(userInput: chosenAnswer.value);
                        },
                        child: Text("Next"),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          chosenAnswer.value = null;
                        },
                        child: Text("Try again"),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
