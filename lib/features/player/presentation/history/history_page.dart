import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/components/animated_button.dart';
import 'package:yandex_cup_task_2/features/player/presentation/history/multiple_choice_history_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/history/slides_history_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/history/text_field_history_page.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/step_history_state_holder/step_history_notifier.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(stepHistoryStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: history.when(
        data: (steps) => ListView.builder(
          itemCount: steps.length,
          itemBuilder: (context, index) => AnimatedButton(
            onTap: () {
              final page = steps[index].map(
                slides: (value) => SlidesHistoryPage(step: value),
                textField: (value) => TextFieldHistoryPage(step: value),
                choice: (value) => MultipleChoiceHistoryPage(step: value),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(appBar: AppBar(), body: page),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "[${steps[index].when(
                                  slides: (slides) => "Slides",
                                  textField: (question, answer, hints) =>
                                      "TextField Question",
                                  choice: (question, answers) =>
                                      "Multiple Choice Question",
                                )}]",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                steps[index].when(
                                  slides: (step) => step.slides.first.text,
                                  textField: (step, firstHintIsShown,
                                          secondHintIsShown) =>
                                      step.question,
                                  choice: (step, chosenAnswerIndex) =>
                                      step.question,
                                ),
                                maxLines: 2,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // if(isOpened.value)
                  ],
                ),
              ),
            ),
          ),
        ),
        empty: () => Center(
          child: Text("No history yet"),
        ),
      ),
    );
  }
}
