// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yandex_cup_task_2/domain/slide.dart';

part 'edit_slide_model.freezed.dart';

@freezed
class EditSlideModel with _$EditSlideModel {
  const EditSlideModel._();
  factory EditSlideModel({
    String? text,
    File? image,
  }) = _EditSlideModel;

  static Future<EditSlideModel> fromSlide(Slide slide) async {
    if (slide.image == null)
      return EditSlideModel(text: slide.text, image: null);
    final filePath = '${(await getTemporaryDirectory()).path}/${slide.image.hashCode}';
    final file = await File(filePath).create();
    await file.writeAsBytes(base64.decode(slide.image!), flush: true);
    return EditSlideModel(text: slide.text, image: file);
  }

  bool validate() => text != null && text!.isNotEmpty;

  Slide toSlide() => Slide(
      text: text!,
      image: image == null ? null : base64.encode(image!.readAsBytesSync()));
}
