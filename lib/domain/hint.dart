// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hint.freezed.dart';
part 'hint.g.dart';

@freezed
class Hint with _$Hint {
  factory Hint({
    required String text,
    required int secondsBeforeShow,
  }) = _Hint;

  factory Hint.fromJson(Map<String, dynamic> json) => _$HintFromJson(json);
}