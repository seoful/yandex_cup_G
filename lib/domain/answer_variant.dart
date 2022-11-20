// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_variant.freezed.dart';
part 'answer_variant.g.dart';

@freezed
class AnswerVariant with _$AnswerVariant {
  factory AnswerVariant({
    required String text,
    required bool isCorrect,
  }) = _AnswerVariant;

  factory AnswerVariant.fromJson(Map<String, dynamic> json) => _$AnswerVariantFromJson(json);
}