// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quest_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestStep _$QuestStepFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'slides':
      return QuestStepSlides.fromJson(json);
    case 'textField':
      return QuestStepTextField.fromJson(json);
    case 'choice':
      return QuestStepChoice.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'QuestStep',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$QuestStep {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Slide> slides) slides,
    required TResult Function(String question, String answer, List<Hint> hints)
        textField,
    required TResult Function(String question, List<AnswerVariant> answers)
        choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Slide> slides)? slides,
    TResult? Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult? Function(String question, List<AnswerVariant> answers)? choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Slide> slides)? slides,
    TResult Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult Function(String question, List<AnswerVariant> answers)? choice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestStepSlides value) slides,
    required TResult Function(QuestStepTextField value) textField,
    required TResult Function(QuestStepChoice value) choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides value)? slides,
    TResult? Function(QuestStepTextField value)? textField,
    TResult? Function(QuestStepChoice value)? choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestStepSlides value)? slides,
    TResult Function(QuestStepTextField value)? textField,
    TResult Function(QuestStepChoice value)? choice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestStepCopyWith<$Res> {
  factory $QuestStepCopyWith(QuestStep value, $Res Function(QuestStep) then) =
      _$QuestStepCopyWithImpl<$Res, QuestStep>;
}

/// @nodoc
class _$QuestStepCopyWithImpl<$Res, $Val extends QuestStep>
    implements $QuestStepCopyWith<$Res> {
  _$QuestStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestStepSlidesCopyWith<$Res> {
  factory _$$QuestStepSlidesCopyWith(
          _$QuestStepSlides value, $Res Function(_$QuestStepSlides) then) =
      __$$QuestStepSlidesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Slide> slides});
}

/// @nodoc
class __$$QuestStepSlidesCopyWithImpl<$Res>
    extends _$QuestStepCopyWithImpl<$Res, _$QuestStepSlides>
    implements _$$QuestStepSlidesCopyWith<$Res> {
  __$$QuestStepSlidesCopyWithImpl(
      _$QuestStepSlides _value, $Res Function(_$QuestStepSlides) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = null,
  }) {
    return _then(_$QuestStepSlides(
      slides: null == slides
          ? _value._slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<Slide>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestStepSlides implements QuestStepSlides {
  _$QuestStepSlides({required final List<Slide> slides, final String? $type})
      : _slides = slides,
        $type = $type ?? 'slides';

  factory _$QuestStepSlides.fromJson(Map<String, dynamic> json) =>
      _$$QuestStepSlidesFromJson(json);

  final List<Slide> _slides;
  @override
  List<Slide> get slides {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slides);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QuestStep.slides(slides: $slides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestStepSlides &&
            const DeepCollectionEquality().equals(other._slides, _slides));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_slides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestStepSlidesCopyWith<_$QuestStepSlides> get copyWith =>
      __$$QuestStepSlidesCopyWithImpl<_$QuestStepSlides>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Slide> slides) slides,
    required TResult Function(String question, String answer, List<Hint> hints)
        textField,
    required TResult Function(String question, List<AnswerVariant> answers)
        choice,
  }) {
    return slides(this.slides);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Slide> slides)? slides,
    TResult? Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult? Function(String question, List<AnswerVariant> answers)? choice,
  }) {
    return slides?.call(this.slides);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Slide> slides)? slides,
    TResult Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult Function(String question, List<AnswerVariant> answers)? choice,
    required TResult orElse(),
  }) {
    if (slides != null) {
      return slides(this.slides);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestStepSlides value) slides,
    required TResult Function(QuestStepTextField value) textField,
    required TResult Function(QuestStepChoice value) choice,
  }) {
    return slides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides value)? slides,
    TResult? Function(QuestStepTextField value)? textField,
    TResult? Function(QuestStepChoice value)? choice,
  }) {
    return slides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestStepSlides value)? slides,
    TResult Function(QuestStepTextField value)? textField,
    TResult Function(QuestStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (slides != null) {
      return slides(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestStepSlidesToJson(
      this,
    );
  }
}

abstract class QuestStepSlides implements QuestStep {
  factory QuestStepSlides({required final List<Slide> slides}) =
      _$QuestStepSlides;

  factory QuestStepSlides.fromJson(Map<String, dynamic> json) =
      _$QuestStepSlides.fromJson;

  List<Slide> get slides;
  @JsonKey(ignore: true)
  _$$QuestStepSlidesCopyWith<_$QuestStepSlides> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestStepTextFieldCopyWith<$Res> {
  factory _$$QuestStepTextFieldCopyWith(_$QuestStepTextField value,
          $Res Function(_$QuestStepTextField) then) =
      __$$QuestStepTextFieldCopyWithImpl<$Res>;
  @useResult
  $Res call({String question, String answer, List<Hint> hints});
}

/// @nodoc
class __$$QuestStepTextFieldCopyWithImpl<$Res>
    extends _$QuestStepCopyWithImpl<$Res, _$QuestStepTextField>
    implements _$$QuestStepTextFieldCopyWith<$Res> {
  __$$QuestStepTextFieldCopyWithImpl(
      _$QuestStepTextField _value, $Res Function(_$QuestStepTextField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? hints = null,
  }) {
    return _then(_$QuestStepTextField(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      hints: null == hints
          ? _value._hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<Hint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestStepTextField implements QuestStepTextField {
  _$QuestStepTextField(
      {required this.question,
      required this.answer,
      final List<Hint> hints = const [],
      final String? $type})
      : _hints = hints,
        $type = $type ?? 'textField';

  factory _$QuestStepTextField.fromJson(Map<String, dynamic> json) =>
      _$$QuestStepTextFieldFromJson(json);

  @override
  final String question;
  @override
  final String answer;
  final List<Hint> _hints;
  @override
  @JsonKey()
  List<Hint> get hints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QuestStep.textField(question: $question, answer: $answer, hints: $hints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestStepTextField &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other._hints, _hints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer,
      const DeepCollectionEquality().hash(_hints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestStepTextFieldCopyWith<_$QuestStepTextField> get copyWith =>
      __$$QuestStepTextFieldCopyWithImpl<_$QuestStepTextField>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Slide> slides) slides,
    required TResult Function(String question, String answer, List<Hint> hints)
        textField,
    required TResult Function(String question, List<AnswerVariant> answers)
        choice,
  }) {
    return textField(question, answer, hints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Slide> slides)? slides,
    TResult? Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult? Function(String question, List<AnswerVariant> answers)? choice,
  }) {
    return textField?.call(question, answer, hints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Slide> slides)? slides,
    TResult Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult Function(String question, List<AnswerVariant> answers)? choice,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(question, answer, hints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestStepSlides value) slides,
    required TResult Function(QuestStepTextField value) textField,
    required TResult Function(QuestStepChoice value) choice,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides value)? slides,
    TResult? Function(QuestStepTextField value)? textField,
    TResult? Function(QuestStepChoice value)? choice,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestStepSlides value)? slides,
    TResult Function(QuestStepTextField value)? textField,
    TResult Function(QuestStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestStepTextFieldToJson(
      this,
    );
  }
}

abstract class QuestStepTextField implements QuestStep {
  factory QuestStepTextField(
      {required final String question,
      required final String answer,
      final List<Hint> hints}) = _$QuestStepTextField;

  factory QuestStepTextField.fromJson(Map<String, dynamic> json) =
      _$QuestStepTextField.fromJson;

  String get question;
  String get answer;
  List<Hint> get hints;
  @JsonKey(ignore: true)
  _$$QuestStepTextFieldCopyWith<_$QuestStepTextField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestStepChoiceCopyWith<$Res> {
  factory _$$QuestStepChoiceCopyWith(
          _$QuestStepChoice value, $Res Function(_$QuestStepChoice) then) =
      __$$QuestStepChoiceCopyWithImpl<$Res>;
  @useResult
  $Res call({String question, List<AnswerVariant> answers});
}

/// @nodoc
class __$$QuestStepChoiceCopyWithImpl<$Res>
    extends _$QuestStepCopyWithImpl<$Res, _$QuestStepChoice>
    implements _$$QuestStepChoiceCopyWith<$Res> {
  __$$QuestStepChoiceCopyWithImpl(
      _$QuestStepChoice _value, $Res Function(_$QuestStepChoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answers = null,
  }) {
    return _then(_$QuestStepChoice(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestStepChoice implements QuestStepChoice {
  _$QuestStepChoice(
      {required this.question,
      required final List<AnswerVariant> answers,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'choice';

  factory _$QuestStepChoice.fromJson(Map<String, dynamic> json) =>
      _$$QuestStepChoiceFromJson(json);

  @override
  final String question;
  final List<AnswerVariant> _answers;
  @override
  List<AnswerVariant> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'QuestStep.choice(question: $question, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestStepChoice &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, question, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestStepChoiceCopyWith<_$QuestStepChoice> get copyWith =>
      __$$QuestStepChoiceCopyWithImpl<_$QuestStepChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Slide> slides) slides,
    required TResult Function(String question, String answer, List<Hint> hints)
        textField,
    required TResult Function(String question, List<AnswerVariant> answers)
        choice,
  }) {
    return choice(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Slide> slides)? slides,
    TResult? Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult? Function(String question, List<AnswerVariant> answers)? choice,
  }) {
    return choice?.call(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Slide> slides)? slides,
    TResult Function(String question, String answer, List<Hint> hints)?
        textField,
    TResult Function(String question, List<AnswerVariant> answers)? choice,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(question, answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestStepSlides value) slides,
    required TResult Function(QuestStepTextField value) textField,
    required TResult Function(QuestStepChoice value) choice,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides value)? slides,
    TResult? Function(QuestStepTextField value)? textField,
    TResult? Function(QuestStepChoice value)? choice,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestStepSlides value)? slides,
    TResult Function(QuestStepTextField value)? textField,
    TResult Function(QuestStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestStepChoiceToJson(
      this,
    );
  }
}

abstract class QuestStepChoice implements QuestStep {
  factory QuestStepChoice(
      {required final String question,
      required final List<AnswerVariant> answers}) = _$QuestStepChoice;

  factory QuestStepChoice.fromJson(Map<String, dynamic> json) =
      _$QuestStepChoice.fromJson;

  String get question;
  List<AnswerVariant> get answers;
  @JsonKey(ignore: true)
  _$$QuestStepChoiceCopyWith<_$QuestStepChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
