// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_multiple_choice_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditMultipleChoiceQuestionModel {
  String? get question => throw _privateConstructorUsedError;
  List<EditMultipleChoiceAnswer> get answers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditMultipleChoiceQuestionModelCopyWith<EditMultipleChoiceQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMultipleChoiceQuestionModelCopyWith<$Res> {
  factory $EditMultipleChoiceQuestionModelCopyWith(
          EditMultipleChoiceQuestionModel value,
          $Res Function(EditMultipleChoiceQuestionModel) then) =
      _$EditMultipleChoiceQuestionModelCopyWithImpl<$Res,
          EditMultipleChoiceQuestionModel>;
  @useResult
  $Res call({String? question, List<EditMultipleChoiceAnswer> answers});
}

/// @nodoc
class _$EditMultipleChoiceQuestionModelCopyWithImpl<$Res,
        $Val extends EditMultipleChoiceQuestionModel>
    implements $EditMultipleChoiceQuestionModelCopyWith<$Res> {
  _$EditMultipleChoiceQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<EditMultipleChoiceAnswer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditMultipleChoiceQuestionModelCopyWith<$Res>
    implements $EditMultipleChoiceQuestionModelCopyWith<$Res> {
  factory _$$_EditMultipleChoiceQuestionModelCopyWith(
          _$_EditMultipleChoiceQuestionModel value,
          $Res Function(_$_EditMultipleChoiceQuestionModel) then) =
      __$$_EditMultipleChoiceQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, List<EditMultipleChoiceAnswer> answers});
}

/// @nodoc
class __$$_EditMultipleChoiceQuestionModelCopyWithImpl<$Res>
    extends _$EditMultipleChoiceQuestionModelCopyWithImpl<$Res,
        _$_EditMultipleChoiceQuestionModel>
    implements _$$_EditMultipleChoiceQuestionModelCopyWith<$Res> {
  __$$_EditMultipleChoiceQuestionModelCopyWithImpl(
      _$_EditMultipleChoiceQuestionModel _value,
      $Res Function(_$_EditMultipleChoiceQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answers = null,
  }) {
    return _then(_$_EditMultipleChoiceQuestionModel(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<EditMultipleChoiceAnswer>,
    ));
  }
}

/// @nodoc

class _$_EditMultipleChoiceQuestionModel
    extends _EditMultipleChoiceQuestionModel {
  _$_EditMultipleChoiceQuestionModel(
      {this.question, final List<EditMultipleChoiceAnswer> answers = const []})
      : _answers = answers,
        super._();

  @override
  final String? question;
  final List<EditMultipleChoiceAnswer> _answers;
  @override
  @JsonKey()
  List<EditMultipleChoiceAnswer> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'EditMultipleChoiceQuestionModel(question: $question, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditMultipleChoiceQuestionModel &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, question, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditMultipleChoiceQuestionModelCopyWith<
          _$_EditMultipleChoiceQuestionModel>
      get copyWith => __$$_EditMultipleChoiceQuestionModelCopyWithImpl<
          _$_EditMultipleChoiceQuestionModel>(this, _$identity);
}

abstract class _EditMultipleChoiceQuestionModel
    extends EditMultipleChoiceQuestionModel {
  factory _EditMultipleChoiceQuestionModel(
          {final String? question,
          final List<EditMultipleChoiceAnswer> answers}) =
      _$_EditMultipleChoiceQuestionModel;
  _EditMultipleChoiceQuestionModel._() : super._();

  @override
  String? get question;
  @override
  List<EditMultipleChoiceAnswer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_EditMultipleChoiceQuestionModelCopyWith<
          _$_EditMultipleChoiceQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}
