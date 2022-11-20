// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<String?> showEnterQuestNameDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(content: _QuestNamePicker(onEnter: (name) {
      Navigator.pop(context, name);
    })),
  );
}

class _QuestNamePicker extends HookWidget {
  _QuestNamePicker({Key? key, required this.onEnter}) : super(key: key);

  final void Function(String value) onEnter;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: controller,
        ),
        const SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () async {
            if (controller.text.isNotEmpty) onEnter(controller.text);
          },
          child: const Text("Save quest"),
        ),
      ],
    );
  }
}
