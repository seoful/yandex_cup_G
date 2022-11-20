import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/domain/quest.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/player/domain/history_step.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/current_step_state_holder/current_step_notifier.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/current_step_state_holder/current_step_state.dart';
import 'package:yandex_cup_task_2/features/player/state_holders/step_history_state_holder/step_history_notifier.dart';

class PlayerManager {
  final CurrentStepNotifier currentStepNotifier;
  final StepHistoryNotifier stepHistoryNotifier;

  PlayerManager(this.currentStepNotifier, this.stepHistoryNotifier);

  List<QuestStep>? _steps;

  String temporaryPath = "";

  Future<void> chooseAndLoadQuest() async {
    final pickResult = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      // allowedExtensions: ['txt'],
      // type: FileType.custom,
    );
    if (pickResult != null) {
      try {
        currentStepNotifier.updateState(CurrentStepState.loading());

        final file = File(pickResult.files.single.path!);

        final data = await file.readAsString();
        temporaryPath = (await getTemporaryDirectory()).path;
        final quest = await compute(decodeQuest, data);
        _steps = List<QuestStep>.from(quest.steps);

        for (var step in _steps!) {
          if (step is QuestStepSlides) {
            for (var slide in step.slides)
              if (slide.image != null) {
                final file =
                    await File("$temporaryPath/${slide.image.hashCode}")
                        .create();
                await file.writeAsBytes(base64.decode(slide.image!));
              }
          }
        }

        currentStepNotifier.updateState(CurrentStepState.start());
      } catch (e) {
        currentStepNotifier.updateState(CurrentStepState.error());
      }
    }
  }

  void startQuest() {
    currentStepNotifier.updateState(CurrentStepState.step(step: _steps!.first));
  }

  void nextStep({dynamic userInput}) {
    final step = _steps!.removeAt(0);
    if (_steps?.isEmpty ?? false) {
      currentStepNotifier.updateState(CurrentStepState.end());
    } else {
      currentStepNotifier
          .updateState(CurrentStepState.step(step: _steps!.first));
    }
    stepHistoryNotifier.addStep(
      step.map(
        slides: (value) => HistoryStep.slides(step: value),
        textField: (value) => HistoryStep.textField(
          step: value,
          firstHintIsShown: userInput[0],
          secondHintIsShown: userInput[1],
        ),
        choice: (value) => HistoryStep.choice(
          step: value,
          chosenAnswerIndex: userInput,
        ),
      ),
    );
  }
}

Quest decodeQuest(String json) {
  return Quest.fromJson(jsonDecode(json));
}

final playerManagerProvider = Provider<PlayerManager>((ref) {
  ref.onDispose(() {
    ref.invalidate(stepHistoryStateNotifierProvider);
  });
  return PlayerManager(
    ref.read(currentStepStateNotifierProvider.notifier),
    ref.read(stepHistoryStateNotifierProvider.notifier),
  );
});
