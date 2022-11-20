import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yandex_cup_task_2/features/player/managers/player_manager.dart';
import 'package:yandex_cup_task_2/features/player/presentation/current/multiple_choice_player_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/current/slides_player_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/current/text_field_player_page.dart';
import 'package:yandex_cup_task_2/features/player/presentation/history/history_page.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/current_step_state_holder/current_step_notifier.dart';

class PlayPage extends ConsumerWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentStepStateNotifierProvider);
    return WillPopScope(
      onWillPop: () {
        ref.invalidate(playerManagerProvider);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(),
                  ),
                );
              },
              child: Text(
                "History",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: state.when(
          step: (step) => step.map(
            slides: (value) => SlidesPlayerPage(step: value),
            textField: (value) => TextFieldPlayerPage(step: value),
            choice: (value) => MultipleChoicePlayerPage(step: value),
          ),
          start: () => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("The quest is ready."),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      ref.read(playerManagerProvider).startQuest();
                    },
                    child: Text("Start"))
              ],
            ),
          ),
          end: () => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("You have completed the quest."),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      ref.invalidate(playerManagerProvider);
                      Navigator.pop(context);
                    },
                    child: Text("Ok"))
              ],
            ),
          ),
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          error: () => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Error opening quest"),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(playerManagerProvider).chooseAndLoadQuest();
                  },
                  child: Text("Open quest"),
                )
              ],
            ),
          ),
          questNotChosen: () => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(playerManagerProvider).chooseAndLoadQuest();
                  },
                  child: Text("Open quest"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
