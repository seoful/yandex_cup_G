// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide.freezed.dart';
part 'slide.g.dart';

@freezed
class Slide with _$Slide {
  factory Slide({
    String? image,
    required String text,
  }) = _Slide;

  factory Slide.fromJson(Map<String, dynamic> json) => _$SlideFromJson(json);
}
