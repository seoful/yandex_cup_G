// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_slides_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditSlidesStepModel {
  List<EditSlideModel> get slides => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditSlidesStepModelCopyWith<EditSlidesStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSlidesStepModelCopyWith<$Res> {
  factory $EditSlidesStepModelCopyWith(
          EditSlidesStepModel value, $Res Function(EditSlidesStepModel) then) =
      _$EditSlidesStepModelCopyWithImpl<$Res, EditSlidesStepModel>;
  @useResult
  $Res call({List<EditSlideModel> slides});
}

/// @nodoc
class _$EditSlidesStepModelCopyWithImpl<$Res, $Val extends EditSlidesStepModel>
    implements $EditSlidesStepModelCopyWith<$Res> {
  _$EditSlidesStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = null,
  }) {
    return _then(_value.copyWith(
      slides: null == slides
          ? _value.slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<EditSlideModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditSlidesStepModelCopyWith<$Res>
    implements $EditSlidesStepModelCopyWith<$Res> {
  factory _$$_EditSlidesStepModelCopyWith(_$_EditSlidesStepModel value,
          $Res Function(_$_EditSlidesStepModel) then) =
      __$$_EditSlidesStepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditSlideModel> slides});
}

/// @nodoc
class __$$_EditSlidesStepModelCopyWithImpl<$Res>
    extends _$EditSlidesStepModelCopyWithImpl<$Res, _$_EditSlidesStepModel>
    implements _$$_EditSlidesStepModelCopyWith<$Res> {
  __$$_EditSlidesStepModelCopyWithImpl(_$_EditSlidesStepModel _value,
      $Res Function(_$_EditSlidesStepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = null,
  }) {
    return _then(_$_EditSlidesStepModel(
      slides: null == slides
          ? _value._slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<EditSlideModel>,
    ));
  }
}

/// @nodoc

class _$_EditSlidesStepModel extends _EditSlidesStepModel {
  _$_EditSlidesStepModel({final List<EditSlideModel> slides = const []})
      : _slides = slides,
        super._();

  final List<EditSlideModel> _slides;
  @override
  @JsonKey()
  List<EditSlideModel> get slides {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slides);
  }

  @override
  String toString() {
    return 'EditSlidesStepModel(slides: $slides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSlidesStepModel &&
            const DeepCollectionEquality().equals(other._slides, _slides));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_slides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSlidesStepModelCopyWith<_$_EditSlidesStepModel> get copyWith =>
      __$$_EditSlidesStepModelCopyWithImpl<_$_EditSlidesStepModel>(
          this, _$identity);
}

abstract class _EditSlidesStepModel extends EditSlidesStepModel {
  factory _EditSlidesStepModel({final List<EditSlideModel> slides}) =
      _$_EditSlidesStepModel;
  _EditSlidesStepModel._() : super._();

  @override
  List<EditSlideModel> get slides;
  @override
  @JsonKey(ignore: true)
  _$$_EditSlidesStepModelCopyWith<_$_EditSlidesStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
