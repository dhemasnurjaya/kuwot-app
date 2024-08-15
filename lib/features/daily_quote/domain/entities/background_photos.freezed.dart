// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackgroundPhotos {
  List<Photo> get photos => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundPhotosCopyWith<BackgroundPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundPhotosCopyWith<$Res> {
  factory $BackgroundPhotosCopyWith(
          BackgroundPhotos value, $Res Function(BackgroundPhotos) then) =
      _$BackgroundPhotosCopyWithImpl<$Res, BackgroundPhotos>;
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$BackgroundPhotosCopyWithImpl<$Res, $Val extends BackgroundPhotos>
    implements $BackgroundPhotosCopyWith<$Res> {
  _$BackgroundPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundPhotosImplCopyWith<$Res>
    implements $BackgroundPhotosCopyWith<$Res> {
  factory _$$BackgroundPhotosImplCopyWith(_$BackgroundPhotosImpl value,
          $Res Function(_$BackgroundPhotosImpl) then) =
      __$$BackgroundPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$$BackgroundPhotosImplCopyWithImpl<$Res>
    extends _$BackgroundPhotosCopyWithImpl<$Res, _$BackgroundPhotosImpl>
    implements _$$BackgroundPhotosImplCopyWith<$Res> {
  __$$BackgroundPhotosImplCopyWithImpl(_$BackgroundPhotosImpl _value,
      $Res Function(_$BackgroundPhotosImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$BackgroundPhotosImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$BackgroundPhotosImpl implements _BackgroundPhotos {
  const _$BackgroundPhotosImpl({required final List<Photo> photos})
      : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'BackgroundPhotos(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundPhotosImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundPhotosImplCopyWith<_$BackgroundPhotosImpl> get copyWith =>
      __$$BackgroundPhotosImplCopyWithImpl<_$BackgroundPhotosImpl>(
          this, _$identity);
}

abstract class _BackgroundPhotos implements BackgroundPhotos {
  const factory _BackgroundPhotos({required final List<Photo> photos}) =
      _$BackgroundPhotosImpl;

  @override
  List<Photo> get photos;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundPhotosImplCopyWith<_$BackgroundPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Photo {
  String get url => throw _privateConstructorUsedError;
  String get avgColor => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({String url, String avgColor});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? avgColor = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: null == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundImageImplCopyWith<$Res>
    implements $PhotoCopyWith<$Res> {
  factory _$$BackgroundImageImplCopyWith(_$BackgroundImageImpl value,
          $Res Function(_$BackgroundImageImpl) then) =
      __$$BackgroundImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String avgColor});
}

/// @nodoc
class __$$BackgroundImageImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$BackgroundImageImpl>
    implements _$$BackgroundImageImplCopyWith<$Res> {
  __$$BackgroundImageImplCopyWithImpl(
      _$BackgroundImageImpl _value, $Res Function(_$BackgroundImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? avgColor = null,
  }) {
    return _then(_$BackgroundImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: null == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BackgroundImageImpl implements _BackgroundImage {
  const _$BackgroundImageImpl({required this.url, required this.avgColor});

  @override
  final String url;
  @override
  final String avgColor;

  @override
  String toString() {
    return 'Photo(url: $url, avgColor: $avgColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackgroundImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, avgColor);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundImageImplCopyWith<_$BackgroundImageImpl> get copyWith =>
      __$$BackgroundImageImplCopyWithImpl<_$BackgroundImageImpl>(
          this, _$identity);
}

abstract class _BackgroundImage implements Photo {
  const factory _BackgroundImage(
      {required final String url,
      required final String avgColor}) = _$BackgroundImageImpl;

  @override
  String get url;
  @override
  String get avgColor;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundImageImplCopyWith<_$BackgroundImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
