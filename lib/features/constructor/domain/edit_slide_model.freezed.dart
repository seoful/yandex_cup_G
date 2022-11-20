// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_slide_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditSlideModel {
  String? get text => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditSlideModelCopyWith<EditSlideModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSlideModelCopyWith<$Res> {
  factory $EditSlideModelCopyWith(
          EditSlideModel value, $Res Function(EditSlideModel) then) =
      _$EditSlideModelCopyWithImpl<$Res, EditSlideModel>;
  @useResult
  $Res call({String? text, File? image});
}

/// @nodoc
class _$EditSlideModelCopyWithImpl<$Res, $Val extends EditSlideModel>
    implements $EditSlideModelCopyWith<$Res> {
  _$EditSlideModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditSlideModelCopyWith<$Res>
    implements $EditSlideModelCopyWith<$Res> {
  factory _$$_EditSlideModelCopyWith(
          _$_EditSlideModel value, $Res Function(_$_EditSlideModel) then) =
      __$$_EditSlideModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, File? image});
}

/// @nodoc
class __$$_EditSlideModelCopyWithImpl<$Res>
    extends _$EditSlideModelCopyWithImpl<$Res, _$_EditSlideModel>
    implements _$$_EditSlideModelCopyWith<$Res> {
  __$$_EditSlideModelCopyWithImpl(
      _$_EditSlideModel _value, $Res Function(_$_EditSlideModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_EditSlideModel(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_EditSlideModel extends _EditSlideModel {
  _$_EditSlideModel({this.text, this.image}) : super._();

  @override
  final String? text;
  @override
  final File? image;

  @override
  String toString() {
    return 'EditSlideModel(text: $text, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSlideModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSlideModelCopyWith<_$_EditSlideModel> get copyWith =>
      __$$_EditSlideModelCopyWithImpl<_$_EditSlideModel>(this, _$identity);
}

abstract class _EditSlideModel extends EditSlideModel {
  factory _EditSlideModel({final String? text, final File? image}) =
      _$_EditSlideModel;
  _EditSlideModel._() : super._();

  @override
  String? get text;
  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$_EditSlideModelCopyWith<_$_EditSlideModel> get copyWith =>
      throw _privateConstructorUsedError;
}
