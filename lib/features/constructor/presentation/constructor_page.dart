import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/constructor/managers/constructor_manager.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/components/name_picker_dialog.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/components/step_type_choose_dialog.dart';
import 'package:yandex_cup_task_2/features/constructor/state_holder/constructor_state_notifier.dart';

class ConstructorPage extends ConsumerWidget {
  const ConstructorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(constructorStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () async {
              if (state.steps.isEmpty) return;

              final name = await showEnterQuestNameDialog(context);
              if (name != null)
                ref.read(constructorManagerProvider).saveQuest(name);
            },
            child: Text(
              "Save quest",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: state.steps.isEmpty
          ? Center(
              child: ElevatedButton(
                onPressed: () {
                  _addStep(ref, context);
                },
                child: Text("Add step"),
              ),
            )
          : ReorderableListView.builder(
              itemBuilder: (context, index) {
                return _ListItem(
                    key: ValueKey(state.steps[index]),
                    step: state.steps[index],
                    onEditPressed: () {
                      ref
                          .read(constructorManagerProvider)
                          .startEditStep(state.steps[index]);
                    },
                    onDeletePressed: () {
                      ref.read(constructorManagerProvider).deleteStep(index);
                    });
              },
              itemCount: state.steps.length,
              onReorder: ref.read(constructorManagerProvider).changeOrder,
              header: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Steps can be reordered by long press",
                  textAlign: TextAlign.center,
                ),
              ),
              footer: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    _addStep(ref, context);
                  },
                  child: Text("Add step"),
                ),
              ),
            ),
    );
  }

  void _addStep(WidgetRef ref, BuildContext context) async {
    final stepType = await chooseStepType(context);
    if (stepType != null)
      ref.read(constructorManagerProvider).startAddStep(stepType);
  }
}

class _ListItem extends HookWidget {
  const _ListItem({
    super.key,
    required this.step,
    required this.onEditPressed,
    required this.onDeletePressed,
  });
  final QuestStep step;
  final void Function() onEditPressed;
  final void Function() onDeletePressed;

  @override
  Widget build(BuildContext context) {
    // final isOpened = useState(false);

    return Card(
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
                        "[${step.when(
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
                        step.when(
                          slides: (slides) => slides.first.text,
                          textField: (question, answer, hints) => question,
                          choice: (question, answers) => question,
                        ),
                        maxLines: 2,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: onEditPressed,
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: onDeletePressed,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            // if(isOpened.value)
          ],
        ),
      ),
    );
  }
}
