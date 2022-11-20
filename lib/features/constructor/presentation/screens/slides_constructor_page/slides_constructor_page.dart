import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slide_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slides_step_model.dart';
import 'package:yandex_cup_task_2/features/constructor/managers/constructor_manager.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/components/image_picker_dialog.dart';
import 'package:yandex_cup_task_2/features/constructor/presentation/screens/slides_constructor_page/notifier/slides_constructor_notifier.dart';

class SlidesConstructorPage extends HookConsumerWidget {
  const SlidesConstructorPage({Key? key, this.step}) : super(key: key);

  final EditSlidesStepModel? step;

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

    final state = ref.watch(slidesConstructorStateNotifierProvider(step));

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                if(state.validate())
               { final manager = ref.read(constructorManagerProvider);
                step == null
                    ? manager.saveAddStep(state.toQuestStep())
                    : manager.saveEditStep(state.toQuestStep());
                Navigator.pop(context);}else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Make sure everything is filled")));
                }
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return _SlidePage(
                    slide: state.slides[index],
                    onModelChanged: (slide) {
                      ref
                          .read(slidesConstructorStateNotifierProvider(step)
                              .notifier)
                          .updateSlide(index, slide);
                    },
                  );
                },
                controller: pageController,
                itemCount: state.slides.length,
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
                    Visibility(
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: state.slides.length > 1,
                      child: IconButton(
                        onPressed: () {
                          ref
                              .read(slidesConstructorStateNotifierProvider(step)
                                  .notifier)
                              .deleteSlide(currentPage.value - 1);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Text("${currentPage.value} of ${state.slides.length}"),
                    IconButton(
                      onPressed: () {
                        ref
                            .read(slidesConstructorStateNotifierProvider(step)
                                .notifier)
                            .addSlide(currentPage.value);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SlidePage extends HookConsumerWidget {
  const _SlidePage(
      {Key? key, required this.slide, required this.onModelChanged})
      : super(key: key);
  final EditSlideModel slide;
  final void Function(EditSlideModel) onModelChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController(text: slide.text);

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                minLines: 1,
                maxLines: 10,
                decoration:
                    const InputDecoration(hintText: "Enter text here..."),
                controller: textEditingController,
                onChanged: (value) {
                  onModelChanged(slide.copyWith(text: value));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              slide.image != null
                  ? Image.file(slide.image!)
                  : ElevatedButton(
                      onPressed: () async {
                        final file = await pickImage(context);
                        if (file != null) {
                          final image = File(file.path);
                          onModelChanged(slide.copyWith(image: image));
                        }
                      },
                      child: const Text("Add image"),
                    ),
              if (slide.image != null) ...[
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final file = await pickImage(context);
                    if (file != null) {
                      final image = File(file.path);
                      onModelChanged(slide.copyWith(image: image));
                    }
                  },
                  child: const Text("Change image"),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
