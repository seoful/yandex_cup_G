// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_text_field_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTextFieldQuestionModel {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  List<EditTextFieldQuestionHintModel> get hints =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTextFieldQuestionModelCopyWith<EditTextFieldQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTextFieldQuestionModelCopyWith<$Res> {
  factory $EditTextFieldQuestionModelCopyWith(EditTextFieldQuestionModel value,
          $Res Function(EditTextFieldQuestionModel) then) =
      _$EditTextFieldQuestionModelCopyWithImpl<$Res,
          EditTextFieldQuestionModel>;
  @useResult
  $Res call(
      {String? question,
      String? answer,
      List<EditTextFieldQuestionHintModel> hints});
}

/// @nodoc
class _$EditTextFieldQuestionModelCopyWithImpl<$Res,
        $Val extends EditTextFieldQuestionModel>
    implements $EditTextFieldQuestionModelCopyWith<$Res> {
  _$EditTextFieldQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? hints = null,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      hints: null == hints
          ? _value.hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<EditTextFieldQuestionHintModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditTextFieldQuestionModelCopyWith<$Res>
    implements $EditTextFieldQuestionModelCopyWith<$Res> {
  factory _$$_EditTextFieldQuestionModelCopyWith(
          _$_EditTextFieldQuestionModel value,
          $Res Function(_$_EditTextFieldQuestionModel) then) =
      __$$_EditTextFieldQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? question,
      String? answer,
      List<EditTextFieldQuestionHintModel> hints});
}

/// @nodoc
class __$$_EditTextFieldQuestionModelCopyWithImpl<$Res>
    extends _$EditTextFieldQuestionModelCopyWithImpl<$Res,
        _$_EditTextFieldQuestionModel>
    implements _$$_EditTextFieldQuestionModelCopyWith<$Res> {
  __$$_EditTextFieldQuestionModelCopyWithImpl(
      _$_EditTextFieldQuestionModel _value,
      $Res Function(_$_EditTextFieldQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? hints = null,
  }) {
    return _then(_$_EditTextFieldQuestionModel(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      hints: null == hints
          ? _value._hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<EditTextFieldQuestionHintModel>,
    ));
  }
}

/// @nodoc

class _$_EditTextFieldQuestionModel extends _EditTextFieldQuestionModel {
  _$_EditTextFieldQuestionModel(
      {this.question,
      this.answer,
      final List<EditTextFieldQuestionHintModel> hints = const []})
      : _hints = hints,
        super._();

  @override
  final String? question;
  @override
  final String? answer;
  final List<EditTextFieldQuestionHintModel> _hints;
  @override
  @JsonKey()
  List<EditTextFieldQuestionHintModel> get hints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  @override
  String toString() {
    return 'EditTextFieldQuestionModel(question: $question, answer: $answer, hints: $hints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTextFieldQuestionModel &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other._hints, _hints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer,
      const DeepCollectionEquality().hash(_hints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTextFieldQuestionModelCopyWith<_$_EditTextFieldQuestionModel>
      get copyWith => __$$_EditTextFieldQuestionModelCopyWithImpl<
          _$_EditTextFieldQuestionModel>(this, _$identity);
}

abstract class _EditTextFieldQuestionModel extends EditTextFieldQuestionModel {
  factory _EditTextFieldQuestionModel(
          {final String? question,
          final String? answer,
          final List<EditTextFieldQuestionHintModel> hints}) =
      _$_EditTextFieldQuestionModel;
  _EditTextFieldQuestionModel._() : super._();

  @override
  String? get question;
  @override
  String? get answer;
  @override
  List<EditTextFieldQuestionHintModel> get hints;
  @override
  @JsonKey(ignore: true)
  _$$_EditTextFieldQuestionModelCopyWith<_$_EditTextFieldQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}
