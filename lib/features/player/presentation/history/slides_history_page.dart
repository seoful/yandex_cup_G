import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';
import 'package:yandex_cup_task_2/features/player/managers/player_manager.dart';

class SlidesHistoryPage extends HookConsumerWidget {
  const SlidesHistoryPage({Key? key, required this.step}) : super(key: key);

  final HistoryStepSlides step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    final currentPage = useState(1);

    useMemoized(
      () {
        pageController.addListener(() {
          final value = pageController.page!;
          final roundedValue = value.round() + 1;
          if (roundedValue != currentPage.value) {
            currentPage.value = roundedValue;
          }
        });
      },
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: PageView.builder(
            itemBuilder: (context, index) {
              final slide = step.step.slides[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(slide.text),
                        const SizedBox(
                          height: 20,
                        ),
                        if (slide.image != null)
                          Image.file(
                            File(
                              "${ref.read(playerManagerProvider).temporaryPath}/${slide.image.hashCode}",
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
            controller: pageController,
            itemCount: step.step.slides.length,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: currentPage.value == 1
                      ? null
                      : () {
                          pageController.animateToPage(currentPage.value - 2,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeOut);
                        },
                  child: Text("Previous"),
                ),
                Text("${currentPage.value} of ${step.step.slides.length}"),
                TextButton(
                  onPressed: currentPage.value == step.step.slides.length
                      ? null
                      : () {
                          pageController.animateToPage(currentPage.value,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeOut);
                        },
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
