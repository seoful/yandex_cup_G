// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryStep {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStepSlides step) slides,
    required TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)
        textField,
    required TResult Function(QuestStepChoice step, int chosenAnswerIndex)
        choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides step)? slides,
    TResult? Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult? Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStepSlides step)? slides,
    TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStepSlides value) slides,
    required TResult Function(HistoryStepTextField value) textField,
    required TResult Function(HistoryStepChoice value) choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryStepSlides value)? slides,
    TResult? Function(HistoryStepTextField value)? textField,
    TResult? Function(HistoryStepChoice value)? choice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStepSlides value)? slides,
    TResult Function(HistoryStepTextField value)? textField,
    TResult Function(HistoryStepChoice value)? choice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStepCopyWith<$Res> {
  factory $HistoryStepCopyWith(
          HistoryStep value, $Res Function(HistoryStep) then) =
      _$HistoryStepCopyWithImpl<$Res, HistoryStep>;
}

/// @nodoc
class _$HistoryStepCopyWithImpl<$Res, $Val extends HistoryStep>
    implements $HistoryStepCopyWith<$Res> {
  _$HistoryStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryStepSlidesCopyWith<$Res> {
  factory _$$HistoryStepSlidesCopyWith(
          _$HistoryStepSlides value, $Res Function(_$HistoryStepSlides) then) =
      __$$HistoryStepSlidesCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestStepSlides step});
}

/// @nodoc
class __$$HistoryStepSlidesCopyWithImpl<$Res>
    extends _$HistoryStepCopyWithImpl<$Res, _$HistoryStepSlides>
    implements _$$HistoryStepSlidesCopyWith<$Res> {
  __$$HistoryStepSlidesCopyWithImpl(
      _$HistoryStepSlides _value, $Res Function(_$HistoryStepSlides) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$HistoryStepSlides(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as QuestStepSlides,
    ));
  }
}

/// @nodoc

class _$HistoryStepSlides implements HistoryStepSlides {
  _$HistoryStepSlides({required this.step});

  @override
  final QuestStepSlides step;

  @override
  String toString() {
    return 'HistoryStep.slides(step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStepSlides &&
            const DeepCollectionEquality().equals(other.step, step));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(step));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStepSlidesCopyWith<_$HistoryStepSlides> get copyWith =>
      __$$HistoryStepSlidesCopyWithImpl<_$HistoryStepSlides>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStepSlides step) slides,
    required TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)
        textField,
    required TResult Function(QuestStepChoice step, int chosenAnswerIndex)
        choice,
  }) {
    return slides(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides step)? slides,
    TResult? Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult? Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
  }) {
    return slides?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStepSlides step)? slides,
    TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
    required TResult orElse(),
  }) {
    if (slides != null) {
      return slides(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStepSlides value) slides,
    required TResult Function(HistoryStepTextField value) textField,
    required TResult Function(HistoryStepChoice value) choice,
  }) {
    return slides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryStepSlides value)? slides,
    TResult? Function(HistoryStepTextField value)? textField,
    TResult? Function(HistoryStepChoice value)? choice,
  }) {
    return slides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStepSlides value)? slides,
    TResult Function(HistoryStepTextField value)? textField,
    TResult Function(HistoryStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (slides != null) {
      return slides(this);
    }
    return orElse();
  }
}

abstract class HistoryStepSlides implements HistoryStep {
  factory HistoryStepSlides({required final QuestStepSlides step}) =
      _$HistoryStepSlides;

  QuestStepSlides get step;
  @JsonKey(ignore: true)
  _$$HistoryStepSlidesCopyWith<_$HistoryStepSlides> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryStepTextFieldCopyWith<$Res> {
  factory _$$HistoryStepTextFieldCopyWith(_$HistoryStepTextField value,
          $Res Function(_$HistoryStepTextField) then) =
      __$$HistoryStepTextFieldCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {QuestStepTextField step, bool firstHintIsShown, bool secondHintIsShown});
}

/// @nodoc
class __$$HistoryStepTextFieldCopyWithImpl<$Res>
    extends _$HistoryStepCopyWithImpl<$Res, _$HistoryStepTextField>
    implements _$$HistoryStepTextFieldCopyWith<$Res> {
  __$$HistoryStepTextFieldCopyWithImpl(_$HistoryStepTextField _value,
      $Res Function(_$HistoryStepTextField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? firstHintIsShown = null,
    Object? secondHintIsShown = null,
  }) {
    return _then(_$HistoryStepTextField(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as QuestStepTextField,
      firstHintIsShown: null == firstHintIsShown
          ? _value.firstHintIsShown
          : firstHintIsShown // ignore: cast_nullable_to_non_nullable
              as bool,
      secondHintIsShown: null == secondHintIsShown
          ? _value.secondHintIsShown
          : secondHintIsShown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryStepTextField implements HistoryStepTextField {
  _$HistoryStepTextField(
      {required this.step,
      required this.firstHintIsShown,
      required this.secondHintIsShown});

  @override
  final QuestStepTextField step;
  @override
  final bool firstHintIsShown;
  @override
  final bool secondHintIsShown;

  @override
  String toString() {
    return 'HistoryStep.textField(step: $step, firstHintIsShown: $firstHintIsShown, secondHintIsShown: $secondHintIsShown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStepTextField &&
            const DeepCollectionEquality().equals(other.step, step) &&
            (identical(other.firstHintIsShown, firstHintIsShown) ||
                other.firstHintIsShown == firstHintIsShown) &&
            (identical(other.secondHintIsShown, secondHintIsShown) ||
                other.secondHintIsShown == secondHintIsShown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(step),
      firstHintIsShown,
      secondHintIsShown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStepTextFieldCopyWith<_$HistoryStepTextField> get copyWith =>
      __$$HistoryStepTextFieldCopyWithImpl<_$HistoryStepTextField>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStepSlides step) slides,
    required TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)
        textField,
    required TResult Function(QuestStepChoice step, int chosenAnswerIndex)
        choice,
  }) {
    return textField(step, firstHintIsShown, secondHintIsShown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides step)? slides,
    TResult? Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult? Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
  }) {
    return textField?.call(step, firstHintIsShown, secondHintIsShown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStepSlides step)? slides,
    TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(step, firstHintIsShown, secondHintIsShown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStepSlides value) slides,
    required TResult Function(HistoryStepTextField value) textField,
    required TResult Function(HistoryStepChoice value) choice,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryStepSlides value)? slides,
    TResult? Function(HistoryStepTextField value)? textField,
    TResult? Function(HistoryStepChoice value)? choice,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStepSlides value)? slides,
    TResult Function(HistoryStepTextField value)? textField,
    TResult Function(HistoryStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }
}

abstract class HistoryStepTextField implements HistoryStep {
  factory HistoryStepTextField(
      {required final QuestStepTextField step,
      required final bool firstHintIsShown,
      required final bool secondHintIsShown}) = _$HistoryStepTextField;

  QuestStepTextField get step;
  bool get firstHintIsShown;
  bool get secondHintIsShown;
  @JsonKey(ignore: true)
  _$$HistoryStepTextFieldCopyWith<_$HistoryStepTextField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryStepChoiceCopyWith<$Res> {
  factory _$$HistoryStepChoiceCopyWith(
          _$HistoryStepChoice value, $Res Function(_$HistoryStepChoice) then) =
      __$$HistoryStepChoiceCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestStepChoice step, int chosenAnswerIndex});
}

/// @nodoc
class __$$HistoryStepChoiceCopyWithImpl<$Res>
    extends _$HistoryStepCopyWithImpl<$Res, _$HistoryStepChoice>
    implements _$$HistoryStepChoiceCopyWith<$Res> {
  __$$HistoryStepChoiceCopyWithImpl(
      _$HistoryStepChoice _value, $Res Function(_$HistoryStepChoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? chosenAnswerIndex = null,
  }) {
    return _then(_$HistoryStepChoice(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as QuestStepChoice,
      chosenAnswerIndex: null == chosenAnswerIndex
          ? _value.chosenAnswerIndex
          : chosenAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HistoryStepChoice implements HistoryStepChoice {
  _$HistoryStepChoice({required this.step, required this.chosenAnswerIndex});

  @override
  final QuestStepChoice step;
  @override
  final int chosenAnswerIndex;

  @override
  String toString() {
    return 'HistoryStep.choice(step: $step, chosenAnswerIndex: $chosenAnswerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStepChoice &&
            const DeepCollectionEquality().equals(other.step, step) &&
            (identical(other.chosenAnswerIndex, chosenAnswerIndex) ||
                other.chosenAnswerIndex == chosenAnswerIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(step), chosenAnswerIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStepChoiceCopyWith<_$HistoryStepChoice> get copyWith =>
      __$$HistoryStepChoiceCopyWithImpl<_$HistoryStepChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStepSlides step) slides,
    required TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)
        textField,
    required TResult Function(QuestStepChoice step, int chosenAnswerIndex)
        choice,
  }) {
    return choice(step, chosenAnswerIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStepSlides step)? slides,
    TResult? Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult? Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
  }) {
    return choice?.call(step, chosenAnswerIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStepSlides step)? slides,
    TResult Function(QuestStepTextField step, bool firstHintIsShown,
            bool secondHintIsShown)?
        textField,
    TResult Function(QuestStepChoice step, int chosenAnswerIndex)? choice,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(step, chosenAnswerIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryStepSlides value) slides,
    required TResult Function(HistoryStepTextField value) textField,
    required TResult Function(HistoryStepChoice value) choice,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryStepSlides value)? slides,
    TResult? Function(HistoryStepTextField value)? textField,
    TResult? Function(HistoryStepChoice value)? choice,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryStepSlides value)? slides,
    TResult Function(HistoryStepTextField value)? textField,
    TResult Function(HistoryStepChoice value)? choice,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }
}

abstract class HistoryStepChoice implements HistoryStep {
  factory HistoryStepChoice(
      {required final QuestStepChoice step,
      required final int chosenAnswerIndex}) = _$HistoryStepChoice;

  QuestStepChoice get step;
  int get chosenAnswerIndex;
  @JsonKey(ignore: true)
  _$$HistoryStepChoiceCopyWith<_$HistoryStepChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
