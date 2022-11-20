// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quest _$QuestFromJson(Map<String, dynamic> json) {
  return _Quest.fromJson(json);
}

/// @nodoc
mixin _$Quest {
  String get name => throw _privateConstructorUsedError;
  List<QuestStep> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestCopyWith<Quest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestCopyWith<$Res> {
  factory $QuestCopyWith(Quest value, $Res Function(Quest) then) =
      _$QuestCopyWithImpl<$Res, Quest>;
  @useResult
  $Res call({String name, List<QuestStep> steps});
}

/// @nodoc
class _$QuestCopyWithImpl<$Res, $Val extends Quest>
    implements $QuestCopyWith<$Res> {
  _$QuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<QuestStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestCopyWith<$Res> implements $QuestCopyWith<$Res> {
  factory _$$_QuestCopyWith(_$_Quest value, $Res Function(_$_Quest) then) =
      __$$_QuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<QuestStep> steps});
}

/// @nodoc
class __$$_QuestCopyWithImpl<$Res> extends _$QuestCopyWithImpl<$Res, _$_Quest>
    implements _$$_QuestCopyWith<$Res> {
  __$$_QuestCopyWithImpl(_$_Quest _value, $Res Function(_$_Quest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? steps = null,
  }) {
    return _then(_$_Quest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<QuestStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quest implements _Quest {
  _$_Quest({required this.name, required final List<QuestStep> steps})
      : _steps = steps;

  factory _$_Quest.fromJson(Map<String, dynamic> json) =>
      _$$_QuestFromJson(json);

  @override
  final String name;
  final List<QuestStep> _steps;
  @override
  List<QuestStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'Quest(name: $name, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quest &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestCopyWith<_$_Quest> get copyWith =>
      __$$_QuestCopyWithImpl<_$_Quest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestToJson(
      this,
    );
  }
}

abstract class _Quest implements Quest {
  factory _Quest(
      {required final String name,
      required final List<QuestStep> steps}) = _$_Quest;

  factory _Quest.fromJson(Map<String, dynamic> json) = _$_Quest.fromJson;

  @override
  String get name;
  @override
  List<QuestStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_QuestCopyWith<_$_Quest> get copyWith =>
      throw _privateConstructorUsedError;
}
