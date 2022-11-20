// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Slide _$SlideFromJson(Map<String, dynamic> json) {
  return _Slide.fromJson(json);
}

/// @nodoc
mixin _$Slide {
  String? get image => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideCopyWith<Slide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideCopyWith<$Res> {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) then) =
      _$SlideCopyWithImpl<$Res, Slide>;
  @useResult
  $Res call({String? image, String text});
}

/// @nodoc
class _$SlideCopyWithImpl<$Res, $Val extends Slide>
    implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlideCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$$_SlideCopyWith(_$_Slide value, $Res Function(_$_Slide) then) =
      __$$_SlideCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String text});
}

/// @nodoc
class __$$_SlideCopyWithImpl<$Res> extends _$SlideCopyWithImpl<$Res, _$_Slide>
    implements _$$_SlideCopyWith<$Res> {
  __$$_SlideCopyWithImpl(_$_Slide _value, $Res Function(_$_Slide) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? text = null,
  }) {
    return _then(_$_Slide(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slide implements _Slide {
  _$_Slide({this.image, required this.text});

  factory _$_Slide.fromJson(Map<String, dynamic> json) =>
      _$$_SlideFromJson(json);

  @override
  final String? image;
  @override
  final String text;

  @override
  String toString() {
    return 'Slide(image: $image, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Slide &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlideCopyWith<_$_Slide> get copyWith =>
      __$$_SlideCopyWithImpl<_$_Slide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideToJson(
      this,
    );
  }
}

abstract class _Slide implements Slide {
  factory _Slide({final String? image, required final String text}) = _$_Slide;

  factory _Slide.fromJson(Map<String, dynamic> json) = _$_Slide.fromJson;

  @override
  String? get image;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SlideCopyWith<_$_Slide> get copyWith =>
      throw _privateConstructorUsedError;
}
