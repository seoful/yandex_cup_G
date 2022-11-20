// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';

Future<StepType?> chooseStepType(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: StepType.values
            .map(
              (e) => TextButton(
                onPressed: () {
                  Navigator.pop(context, e);
                },
                child: Text(
                  e.asString(),
                ),
              ),
            )
            .toList(),
      ),
    ),
  );
}

extension on StepType {
  String asString() {
    switch (this) {
      case StepType.slides:
        return "Slides";
      case StepType.textField:
        return "Question with TextField";
      case StepType.choice:
        return "Multiple choice question";
    }
  }
}
