// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_cup_task_2/domain/quest_step.dart';
import 'package:yandex_cup_task_2/features/constructor/domain/edit_slide_model.dart';

part 'edit_slides_step_model.freezed.dart';

@freezed
class EditSlidesStepModel with _$EditSlidesStepModel {
  EditSlidesStepModel._();
  factory EditSlidesStepModel({
    @Default([]) List<EditSlideModel> slides,
  }) = _EditSlidesStepModel;

  static Future<EditSlidesStepModel> fromQuestStep(QuestStepSlides step) async {
    return EditSlidesStepModel(
      slides: await Future.wait(
        step.slides.map(
          (e) => EditSlideModel.fromSlide(e),
        ),
      ),
    );
  }

  bool validate() =>
      slides.isNotEmpty &&
      slides.fold(
        true,
        (previousValue, element) => previousValue && element.validate(),
      );

  QuestStep toQuestStep() =>
      QuestStep.slides(slides: slides.map((e) => e.toSlide()).toList());
}
