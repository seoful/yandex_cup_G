import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:yandex_cup_task_2/domain/quest.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_multiple_choice_question_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slides_step_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_text_field_question_model.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/multiple_choice_constructor_page/multiple_choice_question_constructor_page.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/slides_constructor_page/slides_constructor_page.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/text_field_question_constructor_page/text_field_question_constructor_page.dart';
import 'package:yandex_cup_task_2/features/constructor/state_holder/constructor_state.dart';
import 'package:yandex_cup_task_2/features/constructor/state_holder/constructor_state_notifier.dart';
import 'package:yandex_cup_task_2/main.dart';

class ConstructorManager {
  final ConstructorStateNotifier notifier;
  final GlobalKey<NavigatorState> navigatorKey;

  ConstructorManager(this.notifier, this.navigatorKey);

  QuestStep? stepToEdit;

  void startAddStep(StepType stepType) {
    Widget addPage;
    switch (stepType) {
      case StepType.slides:
        addPage = SlidesConstructorPage();
        break;
      case StepType.textField:
        addPage = TextFieldQuestionConstructorPage();
        break;
      case StepType.choice:
        addPage = MultipleChoiceQuestionConstructorPage();
        break;
    }
    navigatorKey.currentState?.push(MaterialPageRoute(
      builder: (context) => addPage,
    ));
  }

  void saveAddStep(QuestStep newStep) {
    final steps = List<QuestStep>.from(notifier.currentState.steps);
    notifier.updateState(ConstructorState(steps: [...steps, newStep]));
  }

  void deleteStep(int index) {
    final steps = List<QuestStep>.from(notifier.currentState.steps);
    steps.removeAt(index);
    final newState = notifier.currentState.copyWith(steps: steps);
    notifier.updateState(newState);
  }

  void changeOrder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final steps = List<QuestStep>.from(notifier.currentState.steps);
    final item = steps.removeAt(oldIndex);
    steps.insert(newIndex, item);
    final newState = notifier.currentState.copyWith(steps: steps);
    notifier.updateState(newState);
  }

  void startEditStep(QuestStep step) async {
    stepToEdit = step;
    final editPage = await step.map<Future<Widget>>(
      slides: (value) async => await SlidesConstructorPage(
        step: await EditSlidesStepModel.fromQuestStep(value),
      ),
      textField: (value) => Future.value(TextFieldQuestionConstructorPage(
        step: EditTextFieldQuestionModel.fromQuestStep(value),
      )),
      choice: (value) => Future.value(MultipleChoiceQuestionConstructorPage(
        step: EditMultipleChoiceQuestionModel.fromQuestStep(value),
      )),
    );
    navigatorKey.currentState?.push(MaterialPageRoute(
      builder: (context) => editPage,
    ));
  }

  void saveEditStep(QuestStep newStep) {
    final steps = List<QuestStep>.from(notifier.currentState.steps);
    final index = steps.indexOf(stepToEdit!);
    steps
      ..remove(index)
      ..insert(index, newStep);
    stepToEdit = null;
  }

  void saveQuest(String name) async {
    final quest = Quest(name: name, steps: notifier.currentState.steps);
    final questJson = jsonEncode(quest.toJson());
    final filePath = '${(await getTemporaryDirectory()).path}/${name}.txt';
    final file = await File(filePath).create();
    file.writeAsStringSync(questJson, flush: true);
    print(questJson);

    final shareResult = await Share.shareXFiles([XFile(filePath)]);
    if (shareResult.status == ShareResultStatus.success)
      navigatorKey.currentState?.pop();
  }
}

final constructorManagerProvider = Provider<ConstructorManager>((ref) {
  return ConstructorManager(
    ref.read(constructorStateNotifierProvider.notifier),
    ref.read(navigatorKeyProvider),
  );
});
