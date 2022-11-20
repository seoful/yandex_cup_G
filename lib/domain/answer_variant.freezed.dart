// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerVariant _$AnswerVariantFromJson(Map<String, dynamic> json) {
  return _AnswerVariant.fromJson(json);
}

/// @nodoc
mixin _$AnswerVariant {
  String get text => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerVariantCopyWith<AnswerVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerVariantCopyWith<$Res> {
  factory $AnswerVariantCopyWith(
          AnswerVariant value, $Res Function(AnswerVariant) then) =
      _$AnswerVariantCopyWithImpl<$Res, AnswerVariant>;
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class _$AnswerVariantCopyWithImpl<$Res, $Val extends AnswerVariant>
    implements $AnswerVariantCopyWith<$Res> {
  _$AnswerVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerVariantCopyWith<$Res>
    implements $AnswerVariantCopyWith<$Res> {
  factory _$$_AnswerVariantCopyWith(
          _$_AnswerVariant value, $Res Function(_$_AnswerVariant) then) =
      __$$_AnswerVariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class __$$_AnswerVariantCopyWithImpl<$Res>
    extends _$AnswerVariantCopyWithImpl<$Res, _$_AnswerVariant>
    implements _$$_AnswerVariantCopyWith<$Res> {
  __$$_AnswerVariantCopyWithImpl(
      _$_AnswerVariant _value, $Res Function(_$_AnswerVariant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_$_AnswerVariant(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerVariant implements _AnswerVariant {
  _$_AnswerVariant({required this.text, required this.isCorrect});

  factory _$_AnswerVariant.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerVariantFromJson(json);

  @override
  final String text;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'AnswerVariant(text: $text, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerVariant &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerVariantCopyWith<_$_AnswerVariant> get copyWith =>
      __$$_AnswerVariantCopyWithImpl<_$_AnswerVariant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerVariantToJson(
      this,
    );
  }
}

abstract class _AnswerVariant implements AnswerVariant {
  factory _AnswerVariant(
      {required final String text,
      required final bool isCorrect}) = _$_AnswerVariant;

  factory _AnswerVariant.fromJson(Map<String, dynamic> json) =
      _$_AnswerVariant.fromJson;

  @override
  String get text;
  @override
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerVariantCopyWith<_$_AnswerVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
