// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StepHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HistoryStep> steps) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HistoryStep> steps)? data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HistoryStep> steps)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepHistoryStateData value) data,
    required TResult Function(StepHistoryStateempty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepHistoryStateData value)? data,
    TResult? Function(StepHistoryStateempty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepHistoryStateData value)? data,
    TResult Function(StepHistoryStateempty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepHistoryStateCopyWith<$Res> {
  factory $StepHistoryStateCopyWith(
          StepHistoryState value, $Res Function(StepHistoryState) then) =
      _$StepHistoryStateCopyWithImpl<$Res, StepHistoryState>;
}

/// @nodoc
class _$StepHistoryStateCopyWithImpl<$Res, $Val extends StepHistoryState>
    implements $StepHistoryStateCopyWith<$Res> {
  _$StepHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StepHistoryStateDataCopyWith<$Res> {
  factory _$$StepHistoryStateDataCopyWith(_$StepHistoryStateData value,
          $Res Function(_$StepHistoryStateData) then) =
      __$$StepHistoryStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryStep> steps});
}

/// @nodoc
class __$$StepHistoryStateDataCopyWithImpl<$Res>
    extends _$StepHistoryStateCopyWithImpl<$Res, _$StepHistoryStateData>
    implements _$$StepHistoryStateDataCopyWith<$Res> {
  __$$StepHistoryStateDataCopyWithImpl(_$StepHistoryStateData _value,
      $Res Function(_$StepHistoryStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(_$StepHistoryStateData(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HistoryStep>,
    ));
  }
}

/// @nodoc

class _$StepHistoryStateData implements StepHistoryStateData {
  _$StepHistoryStateData({required final List<HistoryStep> steps})
      : _steps = steps;

  final List<HistoryStep> _steps;
  @override
  List<HistoryStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'StepHistoryState.data(steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepHistoryStateData &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepHistoryStateDataCopyWith<_$StepHistoryStateData> get copyWith =>
      __$$StepHistoryStateDataCopyWithImpl<_$StepHistoryStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HistoryStep> steps) data,
    required TResult Function() empty,
  }) {
    return data(steps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HistoryStep> steps)? data,
    TResult? Function()? empty,
  }) {
    return data?.call(steps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HistoryStep> steps)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(steps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepHistoryStateData value) data,
    required TResult Function(StepHistoryStateempty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepHistoryStateData value)? data,
    TResult? Function(StepHistoryStateempty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepHistoryStateData value)? data,
    TResult Function(StepHistoryStateempty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StepHistoryStateData implements StepHistoryState {
  factory StepHistoryStateData({required final List<HistoryStep> steps}) =
      _$StepHistoryStateData;

  List<HistoryStep> get steps;
  @JsonKey(ignore: true)
  _$$StepHistoryStateDataCopyWith<_$StepHistoryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepHistoryStateemptyCopyWith<$Res> {
  factory _$$StepHistoryStateemptyCopyWith(_$StepHistoryStateempty value,
          $Res Function(_$StepHistoryStateempty) then) =
      __$$StepHistoryStateemptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StepHistoryStateemptyCopyWithImpl<$Res>
    extends _$StepHistoryStateCopyWithImpl<$Res, _$StepHistoryStateempty>
    implements _$$StepHistoryStateemptyCopyWith<$Res> {
  __$$StepHistoryStateemptyCopyWithImpl(_$StepHistoryStateempty _value,
      $Res Function(_$StepHistoryStateempty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StepHistoryStateempty implements StepHistoryStateempty {
  _$StepHistoryStateempty();

  @override
  String toString() {
    return 'StepHistoryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StepHistoryStateempty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HistoryStep> steps) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HistoryStep> steps)? data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HistoryStep> steps)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepHistoryStateData value) data,
    required TResult Function(StepHistoryStateempty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepHistoryStateData value)? data,
    TResult? Function(StepHistoryStateempty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepHistoryStateData value)? data,
    TResult Function(StepHistoryStateempty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class StepHistoryStateempty implements StepHistoryState {
  factory StepHistoryStateempty() = _$StepHistoryStateempty;
}
