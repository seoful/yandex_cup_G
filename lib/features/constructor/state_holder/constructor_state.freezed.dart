// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'constructor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConstructorState {
  List<QuestStep> get steps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConstructorStateCopyWith<ConstructorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstructorStateCopyWith<$Res> {
  factory $ConstructorStateCopyWith(
          ConstructorState value, $Res Function(ConstructorState) then) =
      _$ConstructorStateCopyWithImpl<$Res, ConstructorState>;
  @useResult
  $Res call({List<QuestStep> steps});
}

/// @nodoc
class _$ConstructorStateCopyWithImpl<$Res, $Val extends ConstructorState>
    implements $ConstructorStateCopyWith<$Res> {
  _$ConstructorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<QuestStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConstructorStateCopyWith<$Res>
    implements $ConstructorStateCopyWith<$Res> {
  factory _$$_ConstructorStateCopyWith(
          _$_ConstructorState value, $Res Function(_$_ConstructorState) then) =
      __$$_ConstructorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestStep> steps});
}

/// @nodoc
class __$$_ConstructorStateCopyWithImpl<$Res>
    extends _$ConstructorStateCopyWithImpl<$Res, _$_ConstructorState>
    implements _$$_ConstructorStateCopyWith<$Res> {
  __$$_ConstructorStateCopyWithImpl(
      _$_ConstructorState _value, $Res Function(_$_ConstructorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(_$_ConstructorState(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<QuestStep>,
    ));
  }
}

/// @nodoc

class _$_ConstructorState implements _ConstructorState {
  _$_ConstructorState({required final List<QuestStep> steps}) : _steps = steps;

  final List<QuestStep> _steps;
  @override
  List<QuestStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'ConstructorState(steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConstructorState &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConstructorStateCopyWith<_$_ConstructorState> get copyWith =>
      __$$_ConstructorStateCopyWithImpl<_$_ConstructorState>(this, _$identity);
}

abstract class _ConstructorState implements ConstructorState {
  factory _ConstructorState({required final List<QuestStep> steps}) =
      _$_ConstructorState;

  @override
  List<QuestStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_ConstructorStateCopyWith<_$_ConstructorState> get copyWith =>
      throw _privateConstructorUsedError;
}
