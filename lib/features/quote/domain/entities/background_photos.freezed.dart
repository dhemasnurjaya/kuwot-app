// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackgroundPhotos {
  List<Photo> get photos;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundPhotosCopyWith<BackgroundPhotos> get copyWith =>
      _$BackgroundPhotosCopyWithImpl<BackgroundPhotos>(
          this as BackgroundPhotos, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackgroundPhotos &&
            const DeepCollectionEquality().equals(other.photos, photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photos));

  @override
  String toString() {
    return 'BackgroundPhotos(photos: $photos)';
  }
}

/// @nodoc
abstract mixin class $BackgroundPhotosCopyWith<$Res> {
  factory $BackgroundPhotosCopyWith(
          BackgroundPhotos value, $Res Function(BackgroundPhotos) _then) =
      _$BackgroundPhotosCopyWithImpl;
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$BackgroundPhotosCopyWithImpl<$Res>
    implements $BackgroundPhotosCopyWith<$Res> {
  _$BackgroundPhotosCopyWithImpl(this._self, this._then);

  final BackgroundPhotos _self;
  final $Res Function(BackgroundPhotos) _then;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_self.copyWith(
      photos: null == photos
          ? _self.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _BackgroundPhotos implements BackgroundPhotos {
  const _BackgroundPhotos({required final List<Photo> photos})
      : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackgroundPhotosCopyWith<_BackgroundPhotos> get copyWith =>
      __$BackgroundPhotosCopyWithImpl<_BackgroundPhotos>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackgroundPhotos &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @override
  String toString() {
    return 'BackgroundPhotos(photos: $photos)';
  }
}

/// @nodoc
abstract mixin class _$BackgroundPhotosCopyWith<$Res>
    implements $BackgroundPhotosCopyWith<$Res> {
  factory _$BackgroundPhotosCopyWith(
          _BackgroundPhotos value, $Res Function(_BackgroundPhotos) _then) =
      __$BackgroundPhotosCopyWithImpl;
  @override
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$BackgroundPhotosCopyWithImpl<$Res>
    implements _$BackgroundPhotosCopyWith<$Res> {
  __$BackgroundPhotosCopyWithImpl(this._self, this._then);

  final _BackgroundPhotos _self;
  final $Res Function(_BackgroundPhotos) _then;

  /// Create a copy of BackgroundPhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? photos = null,
  }) {
    return _then(_BackgroundPhotos(
      photos: null == photos
          ? _self._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
mixin _$Photo {
  String get url;
  String get avgColor;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<Photo> get copyWith =>
      _$PhotoCopyWithImpl<Photo>(this as Photo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Photo &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, avgColor);

  @override
  String toString() {
    return 'Photo(url: $url, avgColor: $avgColor)';
  }
}

/// @nodoc
abstract mixin class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) _then) =
      _$PhotoCopyWithImpl;
  @useResult
  $Res call({String url, String avgColor});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._self, this._then);

  final Photo _self;
  final $Res Function(Photo) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? avgColor = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: null == avgColor
          ? _self.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _BackgroundImage implements Photo {
  const _BackgroundImage({required this.url, required this.avgColor});

  @override
  final String url;
  @override
  final String avgColor;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BackgroundImageCopyWith<_BackgroundImage> get copyWith =>
      __$BackgroundImageCopyWithImpl<_BackgroundImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BackgroundImage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, avgColor);

  @override
  String toString() {
    return 'Photo(url: $url, avgColor: $avgColor)';
  }
}

/// @nodoc
abstract mixin class _$BackgroundImageCopyWith<$Res>
    implements $PhotoCopyWith<$Res> {
  factory _$BackgroundImageCopyWith(
          _BackgroundImage value, $Res Function(_BackgroundImage) _then) =
      __$BackgroundImageCopyWithImpl;
  @override
  @useResult
  $Res call({String url, String avgColor});
}

/// @nodoc
class __$BackgroundImageCopyWithImpl<$Res>
    implements _$BackgroundImageCopyWith<$Res> {
  __$BackgroundImageCopyWithImpl(this._self, this._then);

  final _BackgroundImage _self;
  final $Res Function(_BackgroundImage) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? avgColor = null,
  }) {
    return _then(_BackgroundImage(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avgColor: null == avgColor
          ? _self.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
