// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyQuoteModel _$DailyQuoteModelFromJson(Map<String, dynamic> json) {
  return _DailyQuoteModel.fromJson(json);
}

/// @nodoc
mixin _$DailyQuoteModel {
  String get qotdDate => throw _privateConstructorUsedError;
  DailyQuoteQuote get quote => throw _privateConstructorUsedError;

  /// Serializes this DailyQuoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyQuoteModelCopyWith<DailyQuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyQuoteModelCopyWith<$Res> {
  factory $DailyQuoteModelCopyWith(
          DailyQuoteModel value, $Res Function(DailyQuoteModel) then) =
      _$DailyQuoteModelCopyWithImpl<$Res, DailyQuoteModel>;
  @useResult
  $Res call({String qotdDate, DailyQuoteQuote quote});

  $DailyQuoteQuoteCopyWith<$Res> get quote;
}

/// @nodoc
class _$DailyQuoteModelCopyWithImpl<$Res, $Val extends DailyQuoteModel>
    implements $DailyQuoteModelCopyWith<$Res> {
  _$DailyQuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qotdDate = null,
    Object? quote = null,
  }) {
    return _then(_value.copyWith(
      qotdDate: null == qotdDate
          ? _value.qotdDate
          : qotdDate // ignore: cast_nullable_to_non_nullable
              as String,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as DailyQuoteQuote,
    ) as $Val);
  }

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyQuoteQuoteCopyWith<$Res> get quote {
    return $DailyQuoteQuoteCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyQuoteModelImplCopyWith<$Res>
    implements $DailyQuoteModelCopyWith<$Res> {
  factory _$$DailyQuoteModelImplCopyWith(_$DailyQuoteModelImpl value,
          $Res Function(_$DailyQuoteModelImpl) then) =
      __$$DailyQuoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String qotdDate, DailyQuoteQuote quote});

  @override
  $DailyQuoteQuoteCopyWith<$Res> get quote;
}

/// @nodoc
class __$$DailyQuoteModelImplCopyWithImpl<$Res>
    extends _$DailyQuoteModelCopyWithImpl<$Res, _$DailyQuoteModelImpl>
    implements _$$DailyQuoteModelImplCopyWith<$Res> {
  __$$DailyQuoteModelImplCopyWithImpl(
      _$DailyQuoteModelImpl _value, $Res Function(_$DailyQuoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qotdDate = null,
    Object? quote = null,
  }) {
    return _then(_$DailyQuoteModelImpl(
      qotdDate: null == qotdDate
          ? _value.qotdDate
          : qotdDate // ignore: cast_nullable_to_non_nullable
              as String,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as DailyQuoteQuote,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DailyQuoteModelImpl implements _DailyQuoteModel {
  const _$DailyQuoteModelImpl({required this.qotdDate, required this.quote});

  factory _$DailyQuoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyQuoteModelImplFromJson(json);

  @override
  final String qotdDate;
  @override
  final DailyQuoteQuote quote;

  @override
  String toString() {
    return 'DailyQuoteModel(qotdDate: $qotdDate, quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyQuoteModelImpl &&
            (identical(other.qotdDate, qotdDate) ||
                other.qotdDate == qotdDate) &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, qotdDate, quote);

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyQuoteModelImplCopyWith<_$DailyQuoteModelImpl> get copyWith =>
      __$$DailyQuoteModelImplCopyWithImpl<_$DailyQuoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyQuoteModelImplToJson(
      this,
    );
  }
}

abstract class _DailyQuoteModel implements DailyQuoteModel {
  const factory _DailyQuoteModel(
      {required final String qotdDate,
      required final DailyQuoteQuote quote}) = _$DailyQuoteModelImpl;

  factory _DailyQuoteModel.fromJson(Map<String, dynamic> json) =
      _$DailyQuoteModelImpl.fromJson;

  @override
  String get qotdDate;
  @override
  DailyQuoteQuote get quote;

  /// Create a copy of DailyQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyQuoteModelImplCopyWith<_$DailyQuoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyQuoteQuote _$DailyQuoteQuoteFromJson(Map<String, dynamic> json) {
  return _DailyQuoteQuote.fromJson(json);
}

/// @nodoc
mixin _$DailyQuoteQuote {
  int get id => throw _privateConstructorUsedError;
  bool get dialogue => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get favoritesCount => throw _privateConstructorUsedError;
  int get upvotesCount => throw _privateConstructorUsedError;
  int get downvotesCount => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get authorPermalink => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// Serializes this DailyQuoteQuote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyQuoteQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyQuoteQuoteCopyWith<DailyQuoteQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyQuoteQuoteCopyWith<$Res> {
  factory $DailyQuoteQuoteCopyWith(
          DailyQuoteQuote value, $Res Function(DailyQuoteQuote) then) =
      _$DailyQuoteQuoteCopyWithImpl<$Res, DailyQuoteQuote>;
  @useResult
  $Res call(
      {int id,
      bool dialogue,
      bool private,
      List<String> tags,
      String url,
      int favoritesCount,
      int upvotesCount,
      int downvotesCount,
      String author,
      String authorPermalink,
      String body});
}

/// @nodoc
class _$DailyQuoteQuoteCopyWithImpl<$Res, $Val extends DailyQuoteQuote>
    implements $DailyQuoteQuoteCopyWith<$Res> {
  _$DailyQuoteQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyQuoteQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dialogue = null,
    Object? private = null,
    Object? tags = null,
    Object? url = null,
    Object? favoritesCount = null,
    Object? upvotesCount = null,
    Object? downvotesCount = null,
    Object? author = null,
    Object? authorPermalink = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dialogue: null == dialogue
          ? _value.dialogue
          : dialogue // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favoritesCount: null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      upvotesCount: null == upvotesCount
          ? _value.upvotesCount
          : upvotesCount // ignore: cast_nullable_to_non_nullable
              as int,
      downvotesCount: null == downvotesCount
          ? _value.downvotesCount
          : downvotesCount // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorPermalink: null == authorPermalink
          ? _value.authorPermalink
          : authorPermalink // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyQuoteQuoteImplCopyWith<$Res>
    implements $DailyQuoteQuoteCopyWith<$Res> {
  factory _$$DailyQuoteQuoteImplCopyWith(_$DailyQuoteQuoteImpl value,
          $Res Function(_$DailyQuoteQuoteImpl) then) =
      __$$DailyQuoteQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool dialogue,
      bool private,
      List<String> tags,
      String url,
      int favoritesCount,
      int upvotesCount,
      int downvotesCount,
      String author,
      String authorPermalink,
      String body});
}

/// @nodoc
class __$$DailyQuoteQuoteImplCopyWithImpl<$Res>
    extends _$DailyQuoteQuoteCopyWithImpl<$Res, _$DailyQuoteQuoteImpl>
    implements _$$DailyQuoteQuoteImplCopyWith<$Res> {
  __$$DailyQuoteQuoteImplCopyWithImpl(
      _$DailyQuoteQuoteImpl _value, $Res Function(_$DailyQuoteQuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuoteQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dialogue = null,
    Object? private = null,
    Object? tags = null,
    Object? url = null,
    Object? favoritesCount = null,
    Object? upvotesCount = null,
    Object? downvotesCount = null,
    Object? author = null,
    Object? authorPermalink = null,
    Object? body = null,
  }) {
    return _then(_$DailyQuoteQuoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dialogue: null == dialogue
          ? _value.dialogue
          : dialogue // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favoritesCount: null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      upvotesCount: null == upvotesCount
          ? _value.upvotesCount
          : upvotesCount // ignore: cast_nullable_to_non_nullable
              as int,
      downvotesCount: null == downvotesCount
          ? _value.downvotesCount
          : downvotesCount // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorPermalink: null == authorPermalink
          ? _value.authorPermalink
          : authorPermalink // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DailyQuoteQuoteImpl implements _DailyQuoteQuote {
  const _$DailyQuoteQuoteImpl(
      {required this.id,
      required this.dialogue,
      required this.private,
      required final List<String> tags,
      required this.url,
      required this.favoritesCount,
      required this.upvotesCount,
      required this.downvotesCount,
      required this.author,
      required this.authorPermalink,
      required this.body})
      : _tags = tags;

  factory _$DailyQuoteQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyQuoteQuoteImplFromJson(json);

  @override
  final int id;
  @override
  final bool dialogue;
  @override
  final bool private;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String url;
  @override
  final int favoritesCount;
  @override
  final int upvotesCount;
  @override
  final int downvotesCount;
  @override
  final String author;
  @override
  final String authorPermalink;
  @override
  final String body;

  @override
  String toString() {
    return 'DailyQuoteQuote(id: $id, dialogue: $dialogue, private: $private, tags: $tags, url: $url, favoritesCount: $favoritesCount, upvotesCount: $upvotesCount, downvotesCount: $downvotesCount, author: $author, authorPermalink: $authorPermalink, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyQuoteQuoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dialogue, dialogue) ||
                other.dialogue == dialogue) &&
            (identical(other.private, private) || other.private == private) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount) &&
            (identical(other.upvotesCount, upvotesCount) ||
                other.upvotesCount == upvotesCount) &&
            (identical(other.downvotesCount, downvotesCount) ||
                other.downvotesCount == downvotesCount) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorPermalink, authorPermalink) ||
                other.authorPermalink == authorPermalink) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dialogue,
      private,
      const DeepCollectionEquality().hash(_tags),
      url,
      favoritesCount,
      upvotesCount,
      downvotesCount,
      author,
      authorPermalink,
      body);

  /// Create a copy of DailyQuoteQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyQuoteQuoteImplCopyWith<_$DailyQuoteQuoteImpl> get copyWith =>
      __$$DailyQuoteQuoteImplCopyWithImpl<_$DailyQuoteQuoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyQuoteQuoteImplToJson(
      this,
    );
  }
}

abstract class _DailyQuoteQuote implements DailyQuoteQuote {
  const factory _DailyQuoteQuote(
      {required final int id,
      required final bool dialogue,
      required final bool private,
      required final List<String> tags,
      required final String url,
      required final int favoritesCount,
      required final int upvotesCount,
      required final int downvotesCount,
      required final String author,
      required final String authorPermalink,
      required final String body}) = _$DailyQuoteQuoteImpl;

  factory _DailyQuoteQuote.fromJson(Map<String, dynamic> json) =
      _$DailyQuoteQuoteImpl.fromJson;

  @override
  int get id;
  @override
  bool get dialogue;
  @override
  bool get private;
  @override
  List<String> get tags;
  @override
  String get url;
  @override
  int get favoritesCount;
  @override
  int get upvotesCount;
  @override
  int get downvotesCount;
  @override
  String get author;
  @override
  String get authorPermalink;
  @override
  String get body;

  /// Create a copy of DailyQuoteQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyQuoteQuoteImplCopyWith<_$DailyQuoteQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
