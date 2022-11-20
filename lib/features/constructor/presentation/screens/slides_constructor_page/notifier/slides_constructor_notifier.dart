import 'package:riverpod/riverpod.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slide_model.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slides_step_model.dart';

class SlidesConstructorNotifier extends StateNotifier<EditSlidesStepModel> {
  SlidesConstructorNotifier(EditSlidesStepModel? initialState)
      : super(initialState ?? EditSlidesStepModel(slides: [EditSlideModel()]));

  void addSlide(int index) {
    final slides = List<EditSlideModel>.from(state.slides);
    slides.insert(index, EditSlideModel());
    state = state.copyWith(slides: slides);
  }

  void deleteSlide(int index) {
    final slides = List<EditSlideModel>.from(state.slides);
    slides.removeAt(index);
    state = state.copyWith(slides: slides);
  }

  void updateSlide(int index, EditSlideModel newSlide) {
    final slides = List<EditSlideModel>.from(state.slides);
    slides
      ..removeAt(index)
      ..insert(index, newSlide);
    state = state.copyWith(slides: slides);
  }
}

final slidesConstructorStateNotifierProvider = StateNotifierProvider.autoDispose
    .family<SlidesConstructorNotifier, EditSlidesStepModel,
        EditSlidesStepModel?>((ref, initialState) {
  return SlidesConstructorNotifier(initialState);
});
