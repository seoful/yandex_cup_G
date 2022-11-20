// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hint _$HintFromJson(Map<String, dynamic> json) {
  return _Hint.fromJson(json);
}

/// @nodoc
mixin _$Hint {
  String get text => throw _privateConstructorUsedError;
  int get secondsBeforeShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HintCopyWith<Hint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HintCopyWith<$Res> {
  factory $HintCopyWith(Hint value, $Res Function(Hint) then) =
      _$HintCopyWithImpl<$Res, Hint>;
  @useResult
  $Res call({String text, int secondsBeforeShow});
}

/// @nodoc
class _$HintCopyWithImpl<$Res, $Val extends Hint>
    implements $HintCopyWith<$Res> {
  _$HintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? secondsBeforeShow = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      secondsBeforeShow: null == secondsBeforeShow
          ? _value.secondsBeforeShow
          : secondsBeforeShow // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HintCopyWith<$Res> implements $HintCopyWith<$Res> {
  factory _$$_HintCopyWith(_$_Hint value, $Res Function(_$_Hint) then) =
      __$$_HintCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, int secondsBeforeShow});
}

/// @nodoc
class __$$_HintCopyWithImpl<$Res> extends _$HintCopyWithImpl<$Res, _$_Hint>
    implements _$$_HintCopyWith<$Res> {
  __$$_HintCopyWithImpl(_$_Hint _value, $Res Function(_$_Hint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? secondsBeforeShow = null,
  }) {
    return _then(_$_Hint(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      secondsBeforeShow: null == secondsBeforeShow
          ? _value.secondsBeforeShow
          : secondsBeforeShow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hint implements _Hint {
  _$_Hint({required this.text, required this.secondsBeforeShow});

  factory _$_Hint.fromJson(Map<String, dynamic> json) => _$$_HintFromJson(json);

  @override
  final String text;
  @override
  final int secondsBeforeShow;

  @override
  String toString() {
    return 'Hint(text: $text, secondsBeforeShow: $secondsBeforeShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hint &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.secondsBeforeShow, secondsBeforeShow) ||
                other.secondsBeforeShow == secondsBeforeShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, secondsBeforeShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HintCopyWith<_$_Hint> get copyWith =>
      __$$_HintCopyWithImpl<_$_Hint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HintToJson(
      this,
    );
  }
}

abstract class _Hint implements Hint {
  factory _Hint(
      {required final String text,
      required final int secondsBeforeShow}) = _$_Hint;

  factory _Hint.fromJson(Map<String, dynamic> json) = _$_Hint.fromJson;

  @override
  String get text;
  @override
  int get secondsBeforeShow;
  @override
  @JsonKey(ignore: true)
  _$$_HintCopyWith<_$_Hint> get copyWith => throw _privateConstructorUsedError;
}
