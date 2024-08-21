// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoListModel _$PhotoListModelFromJson(Map<String, dynamic> json) {
  return _PhotoListModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoListModel {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  List<PhotoModel> get photos => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  String get nextPage => throw _privateConstructorUsedError;

  /// Serializes this PhotoListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoListModelCopyWith<PhotoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListModelCopyWith<$Res> {
  factory $PhotoListModelCopyWith(
          PhotoListModel value, $Res Function(PhotoListModel) then) =
      _$PhotoListModelCopyWithImpl<$Res, PhotoListModel>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      List<PhotoModel> photos,
      int totalResults,
      String nextPage});
}

/// @nodoc
class _$PhotoListModelCopyWithImpl<$Res, $Val extends PhotoListModel>
    implements $PhotoListModelCopyWith<$Res> {
  _$PhotoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? photos = null,
    Object? totalResults = null,
    Object? nextPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoListModelImplCopyWith<$Res>
    implements $PhotoListModelCopyWith<$Res> {
  factory _$$PhotoListModelImplCopyWith(_$PhotoListModelImpl value,
          $Res Function(_$PhotoListModelImpl) then) =
      __$$PhotoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      List<PhotoModel> photos,
      int totalResults,
      String nextPage});
}

/// @nodoc
class __$$PhotoListModelImplCopyWithImpl<$Res>
    extends _$PhotoListModelCopyWithImpl<$Res, _$PhotoListModelImpl>
    implements _$$PhotoListModelImplCopyWith<$Res> {
  __$$PhotoListModelImplCopyWithImpl(
      _$PhotoListModelImpl _value, $Res Function(_$PhotoListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? photos = null,
    Object? totalResults = null,
    Object? nextPage = null,
  }) {
    return _then(_$PhotoListModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PhotoListModelImpl implements _PhotoListModel {
  const _$PhotoListModelImpl(
      {required this.page,
      required this.perPage,
      required final List<PhotoModel> photos,
      required this.totalResults,
      required this.nextPage})
      : _photos = photos;

  factory _$PhotoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoListModelImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  final List<PhotoModel> _photos;
  @override
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final int totalResults;
  @override
  final String nextPage;

  @override
  String toString() {
    return 'PhotoListModel(page: $page, perPage: $perPage, photos: $photos, totalResults: $totalResults, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoListModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage,
      const DeepCollectionEquality().hash(_photos), totalResults, nextPage);

  /// Create a copy of PhotoListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoListModelImplCopyWith<_$PhotoListModelImpl> get copyWith =>
      __$$PhotoListModelImplCopyWithImpl<_$PhotoListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoListModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoListModel implements PhotoListModel {
  const factory _PhotoListModel(
      {required final int page,
      required final int perPage,
      required final List<PhotoModel> photos,
      required final int totalResults,
      required final String nextPage}) = _$PhotoListModelImpl;

  factory _PhotoListModel.fromJson(Map<String, dynamic> json) =
      _$PhotoListModelImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  List<PhotoModel> get photos;
  @override
  int get totalResults;
  @override
  String get nextPage;

  /// Create a copy of PhotoListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoListModelImplCopyWith<_$PhotoListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  int get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get photographer => throw _privateConstructorUsedError;
  String get photographerUrl => throw _privateConstructorUsedError;
  int get photographerId => throw _privateConstructorUsedError;
  String get avgColor => throw _privateConstructorUsedError;
  SrcModel get src => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  /// Serializes this PhotoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      String photographerUrl,
      int photographerId,
      String avgColor,
      SrcModel src,
      bool liked,
      String alt});

  $SrcModelCopyWith<$Res> get src;
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? avgColor = null,
    Object? src = null,
    Object? liked = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: null == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SrcModel,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SrcModelCopyWith<$Res> get src {
    return $SrcModelCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      String photographerUrl,
      int photographerId,
      String avgColor,
      SrcModel src,
      bool liked,
      String alt});

  @override
  $SrcModelCopyWith<$Res> get src;
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? avgColor = null,
    Object? src = null,
    Object? liked = null,
    Object? alt = null,
  }) {
    return _then(_$PhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: null == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SrcModel,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PhotoModelImpl implements _PhotoModel {
  const _$PhotoModelImpl(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      required this.photographerUrl,
      required this.photographerId,
      required this.avgColor,
      required this.src,
      required this.liked,
      required this.alt});

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  @override
  final int id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;
  @override
  final String photographer;
  @override
  final String photographerUrl;
  @override
  final int photographerId;
  @override
  final String avgColor;
  @override
  final SrcModel src;
  @override
  final bool liked;
  @override
  final String alt;

  @override
  String toString() {
    return 'PhotoModel(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.photographerId, photographerId) ||
                other.photographerId == photographerId) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url,
      photographer, photographerUrl, photographerId, avgColor, src, liked, alt);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {required final int id,
      required final int width,
      required final int height,
      required final String url,
      required final String photographer,
      required final String photographerUrl,
      required final int photographerId,
      required final String avgColor,
      required final SrcModel src,
      required final bool liked,
      required final String alt}) = _$PhotoModelImpl;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override
  int get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  String get photographer;
  @override
  String get photographerUrl;
  @override
  int get photographerId;
  @override
  String get avgColor;
  @override
  SrcModel get src;
  @override
  bool get liked;
  @override
  String get alt;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SrcModel _$SrcModelFromJson(Map<String, dynamic> json) {
  return _SrcModel.fromJson(json);
}

/// @nodoc
mixin _$SrcModel {
  String get original => throw _privateConstructorUsedError;
  String get large2x => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get portrait => throw _privateConstructorUsedError;
  String get landscape => throw _privateConstructorUsedError;
  String get tiny => throw _privateConstructorUsedError;

  /// Serializes this SrcModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SrcModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SrcModelCopyWith<SrcModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcModelCopyWith<$Res> {
  factory $SrcModelCopyWith(SrcModel value, $Res Function(SrcModel) then) =
      _$SrcModelCopyWithImpl<$Res, SrcModel>;
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class _$SrcModelCopyWithImpl<$Res, $Val extends SrcModel>
    implements $SrcModelCopyWith<$Res> {
  _$SrcModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SrcModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SrcModelImplCopyWith<$Res>
    implements $SrcModelCopyWith<$Res> {
  factory _$$SrcModelImplCopyWith(
          _$SrcModelImpl value, $Res Function(_$SrcModelImpl) then) =
      __$$SrcModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class __$$SrcModelImplCopyWithImpl<$Res>
    extends _$SrcModelCopyWithImpl<$Res, _$SrcModelImpl>
    implements _$$SrcModelImplCopyWith<$Res> {
  __$$SrcModelImplCopyWithImpl(
      _$SrcModelImpl _value, $Res Function(_$SrcModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SrcModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_$SrcModelImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SrcModelImpl implements _SrcModel {
  const _$SrcModelImpl(
      {required this.original,
      required this.large2x,
      required this.large,
      required this.medium,
      required this.small,
      required this.portrait,
      required this.landscape,
      required this.tiny});

  factory _$SrcModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrcModelImplFromJson(json);

  @override
  final String original;
  @override
  final String large2x;
  @override
  final String large;
  @override
  final String medium;
  @override
  final String small;
  @override
  final String portrait;
  @override
  final String landscape;
  @override
  final String tiny;

  @override
  String toString() {
    return 'SrcModel(original: $original, large2x: $large2x, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SrcModelImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2x, large2x) || other.large2x == large2x) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2x, large, medium,
      small, portrait, landscape, tiny);

  /// Create a copy of SrcModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SrcModelImplCopyWith<_$SrcModelImpl> get copyWith =>
      __$$SrcModelImplCopyWithImpl<_$SrcModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SrcModelImplToJson(
      this,
    );
  }
}

abstract class _SrcModel implements SrcModel {
  const factory _SrcModel(
      {required final String original,
      required final String large2x,
      required final String large,
      required final String medium,
      required final String small,
      required final String portrait,
      required final String landscape,
      required final String tiny}) = _$SrcModelImpl;

  factory _SrcModel.fromJson(Map<String, dynamic> json) =
      _$SrcModelImpl.fromJson;

  @override
  String get original;
  @override
  String get large2x;
  @override
  String get large;
  @override
  String get medium;
  @override
  String get small;
  @override
  String get portrait;
  @override
  String get landscape;
  @override
  String get tiny;

  /// Create a copy of SrcModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SrcModelImplCopyWith<_$SrcModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
