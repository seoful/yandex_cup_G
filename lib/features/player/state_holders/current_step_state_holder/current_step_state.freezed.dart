// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_step_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentStepState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentStepStateCopyWith<$Res> {
  factory $CurrentStepStateCopyWith(
          CurrentStepState value, $Res Function(CurrentStepState) then) =
      _$CurrentStepStateCopyWithImpl<$Res, CurrentStepState>;
}

/// @nodoc
class _$CurrentStepStateCopyWithImpl<$Res, $Val extends CurrentStepState>
    implements $CurrentStepStateCopyWith<$Res> {
  _$CurrentStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentStepStateStepCopyWith<$Res> {
  factory _$$CurrentStepStateStepCopyWith(_$CurrentStepStateStep value,
          $Res Function(_$CurrentStepStateStep) then) =
      __$$CurrentStepStateStepCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestStep step});

  $QuestStepCopyWith<$Res> get step;
}

/// @nodoc
class __$$CurrentStepStateStepCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateStep>
    implements _$$CurrentStepStateStepCopyWith<$Res> {
  __$$CurrentStepStateStepCopyWithImpl(_$CurrentStepStateStep _value,
      $Res Function(_$CurrentStepStateStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$CurrentStepStateStep(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as QuestStep,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestStepCopyWith<$Res> get step {
    return $QuestStepCopyWith<$Res>(_value.step, (value) {
      return _then(_value.copyWith(step: value));
    });
  }
}

/// @nodoc

class _$CurrentStepStateStep implements CurrentStepStateStep {
  _$CurrentStepStateStep({required this.step});

  @override
  final QuestStep step;

  @override
  String toString() {
    return 'CurrentStepState.step(step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentStepStateStep &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentStepStateStepCopyWith<_$CurrentStepStateStep> get copyWith =>
      __$$CurrentStepStateStepCopyWithImpl<_$CurrentStepStateStep>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return step(this.step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return step?.call(this.step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step(this.step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return step(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return step?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (step != null) {
      return step(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateStep implements CurrentStepState {
  factory CurrentStepStateStep({required final QuestStep step}) =
      _$CurrentStepStateStep;

  QuestStep get step;
  @JsonKey(ignore: true)
  _$$CurrentStepStateStepCopyWith<_$CurrentStepStateStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentStepStateStartCopyWith<$Res> {
  factory _$$CurrentStepStateStartCopyWith(_$CurrentStepStateStart value,
          $Res Function(_$CurrentStepStateStart) then) =
      __$$CurrentStepStateStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentStepStateStartCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateStart>
    implements _$$CurrentStepStateStartCopyWith<$Res> {
  __$$CurrentStepStateStartCopyWithImpl(_$CurrentStepStateStart _value,
      $Res Function(_$CurrentStepStateStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentStepStateStart implements CurrentStepStateStart {
  _$CurrentStepStateStart();

  @override
  String toString() {
    return 'CurrentStepState.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrentStepStateStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateStart implements CurrentStepState {
  factory CurrentStepStateStart() = _$CurrentStepStateStart;
}

/// @nodoc
abstract class _$$CurrentStepStateEndCopyWith<$Res> {
  factory _$$CurrentStepStateEndCopyWith(_$CurrentStepStateEnd value,
          $Res Function(_$CurrentStepStateEnd) then) =
      __$$CurrentStepStateEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentStepStateEndCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateEnd>
    implements _$$CurrentStepStateEndCopyWith<$Res> {
  __$$CurrentStepStateEndCopyWithImpl(
      _$CurrentStepStateEnd _value, $Res Function(_$CurrentStepStateEnd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentStepStateEnd implements CurrentStepStateEnd {
  _$CurrentStepStateEnd();

  @override
  String toString() {
    return 'CurrentStepState.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrentStepStateEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return end();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return end?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateEnd implements CurrentStepState {
  factory CurrentStepStateEnd() = _$CurrentStepStateEnd;
}

/// @nodoc
abstract class _$$CurrentStepStateLoadingCopyWith<$Res> {
  factory _$$CurrentStepStateLoadingCopyWith(_$CurrentStepStateLoading value,
          $Res Function(_$CurrentStepStateLoading) then) =
      __$$CurrentStepStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentStepStateLoadingCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateLoading>
    implements _$$CurrentStepStateLoadingCopyWith<$Res> {
  __$$CurrentStepStateLoadingCopyWithImpl(_$CurrentStepStateLoading _value,
      $Res Function(_$CurrentStepStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentStepStateLoading implements CurrentStepStateLoading {
  _$CurrentStepStateLoading();

  @override
  String toString() {
    return 'CurrentStepState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentStepStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateLoading implements CurrentStepState {
  factory CurrentStepStateLoading() = _$CurrentStepStateLoading;
}

/// @nodoc
abstract class _$$CurrentStepStateErrorCopyWith<$Res> {
  factory _$$CurrentStepStateErrorCopyWith(_$CurrentStepStateError value,
          $Res Function(_$CurrentStepStateError) then) =
      __$$CurrentStepStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentStepStateErrorCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateError>
    implements _$$CurrentStepStateErrorCopyWith<$Res> {
  __$$CurrentStepStateErrorCopyWithImpl(_$CurrentStepStateError _value,
      $Res Function(_$CurrentStepStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentStepStateError implements CurrentStepStateError {
  _$CurrentStepStateError();

  @override
  String toString() {
    return 'CurrentStepState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrentStepStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateError implements CurrentStepState {
  factory CurrentStepStateError() = _$CurrentStepStateError;
}

/// @nodoc
abstract class _$$CurrentStepStateNotChosenCopyWith<$Res> {
  factory _$$CurrentStepStateNotChosenCopyWith(
          _$CurrentStepStateNotChosen value,
          $Res Function(_$CurrentStepStateNotChosen) then) =
      __$$CurrentStepStateNotChosenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentStepStateNotChosenCopyWithImpl<$Res>
    extends _$CurrentStepStateCopyWithImpl<$Res, _$CurrentStepStateNotChosen>
    implements _$$CurrentStepStateNotChosenCopyWith<$Res> {
  __$$CurrentStepStateNotChosenCopyWithImpl(_$CurrentStepStateNotChosen _value,
      $Res Function(_$CurrentStepStateNotChosen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentStepStateNotChosen implements CurrentStepStateNotChosen {
  _$CurrentStepStateNotChosen();

  @override
  String toString() {
    return 'CurrentStepState.questNotChosen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentStepStateNotChosen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestStep step) step,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() questNotChosen,
  }) {
    return questNotChosen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestStep step)? step,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? questNotChosen,
  }) {
    return questNotChosen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestStep step)? step,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? questNotChosen,
    required TResult orElse(),
  }) {
    if (questNotChosen != null) {
      return questNotChosen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentStepStateStep value) step,
    required TResult Function(CurrentStepStateStart value) start,
    required TResult Function(CurrentStepStateEnd value) end,
    required TResult Function(CurrentStepStateLoading value) loading,
    required TResult Function(CurrentStepStateError value) error,
    required TResult Function(CurrentStepStateNotChosen value) questNotChosen,
  }) {
    return questNotChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentStepStateStep value)? step,
    TResult? Function(CurrentStepStateStart value)? start,
    TResult? Function(CurrentStepStateEnd value)? end,
    TResult? Function(CurrentStepStateLoading value)? loading,
    TResult? Function(CurrentStepStateError value)? error,
    TResult? Function(CurrentStepStateNotChosen value)? questNotChosen,
  }) {
    return questNotChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentStepStateStep value)? step,
    TResult Function(CurrentStepStateStart value)? start,
    TResult Function(CurrentStepStateEnd value)? end,
    TResult Function(CurrentStepStateLoading value)? loading,
    TResult Function(CurrentStepStateError value)? error,
    TResult Function(CurrentStepStateNotChosen value)? questNotChosen,
    required TResult orElse(),
  }) {
    if (questNotChosen != null) {
      return questNotChosen(this);
    }
    return orElse();
  }
}

abstract class CurrentStepStateNotChosen implements CurrentStepState {
  factory CurrentStepStateNotChosen() = _$CurrentStepStateNotChosen;
}
