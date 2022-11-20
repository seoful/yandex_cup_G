// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_text_field_question_hint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTextFieldQuestionHintModel {
  String? get text => throw _privateConstructorUsedError;
  int get secondsToShow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTextFieldQuestionHintModelCopyWith<EditTextFieldQuestionHintModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTextFieldQuestionHintModelCopyWith<$Res> {
  factory $EditTextFieldQuestionHintModelCopyWith(
          EditTextFieldQuestionHintModel value,
          $Res Function(EditTextFieldQuestionHintModel) then) =
      _$EditTextFieldQuestionHintModelCopyWithImpl<$Res,
          EditTextFieldQuestionHintModel>;
  @useResult
  $Res call({String? text, int secondsToShow});
}

/// @nodoc
class _$EditTextFieldQuestionHintModelCopyWithImpl<$Res,
        $Val extends EditTextFieldQuestionHintModel>
    implements $EditTextFieldQuestionHintModelCopyWith<$Res> {
  _$EditTextFieldQuestionHintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? secondsToShow = null,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      secondsToShow: null == secondsToShow
          ? _value.secondsToShow
          : secondsToShow // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditTextFieldQuestionHintModelCopyWith<$Res>
    implements $EditTextFieldQuestionHintModelCopyWith<$Res> {
  factory _$$_EditTextFieldQuestionHintModelCopyWith(
          _$_EditTextFieldQuestionHintModel value,
          $Res Function(_$_EditTextFieldQuestionHintModel) then) =
      __$$_EditTextFieldQuestionHintModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, int secondsToShow});
}

/// @nodoc
class __$$_EditTextFieldQuestionHintModelCopyWithImpl<$Res>
    extends _$EditTextFieldQuestionHintModelCopyWithImpl<$Res,
        _$_EditTextFieldQuestionHintModel>
    implements _$$_EditTextFieldQuestionHintModelCopyWith<$Res> {
  __$$_EditTextFieldQuestionHintModelCopyWithImpl(
      _$_EditTextFieldQuestionHintModel _value,
      $Res Function(_$_EditTextFieldQuestionHintModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? secondsToShow = null,
  }) {
    return _then(_$_EditTextFieldQuestionHintModel(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      secondsToShow: null == secondsToShow
          ? _value.secondsToShow
          : secondsToShow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditTextFieldQuestionHintModel
    extends _EditTextFieldQuestionHintModel {
  _$_EditTextFieldQuestionHintModel({this.text, this.secondsToShow = 0})
      : super._();

  @override
  final String? text;
  @override
  @JsonKey()
  final int secondsToShow;

  @override
  String toString() {
    return 'EditTextFieldQuestionHintModel(text: $text, secondsToShow: $secondsToShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTextFieldQuestionHintModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.secondsToShow, secondsToShow) ||
                other.secondsToShow == secondsToShow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, secondsToShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTextFieldQuestionHintModelCopyWith<_$_EditTextFieldQuestionHintModel>
      get copyWith => __$$_EditTextFieldQuestionHintModelCopyWithImpl<
          _$_EditTextFieldQuestionHintModel>(this, _$identity);
}

abstract class _EditTextFieldQuestionHintModel
    extends EditTextFieldQuestionHintModel {
  factory _EditTextFieldQuestionHintModel(
      {final String? text,
      final int secondsToShow}) = _$_EditTextFieldQuestionHintModel;
  _EditTextFieldQuestionHintModel._() : super._();

  @override
  String? get text;
  @override
  int get secondsToShow;
  @override
  @JsonKey(ignore: true)
  _$$_EditTextFieldQuestionHintModelCopyWith<_$_EditTextFieldQuestionHintModel>
      get copyWith => throw _privateConstructorUsedError;
}
