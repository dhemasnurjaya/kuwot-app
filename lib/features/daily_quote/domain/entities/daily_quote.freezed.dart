// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyQuote {
  String get qotdDate => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  /// Create a copy of DailyQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyQuoteCopyWith<DailyQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyQuoteCopyWith<$Res> {
  factory $DailyQuoteCopyWith(
          DailyQuote value, $Res Function(DailyQuote) then) =
      _$DailyQuoteCopyWithImpl<$Res, DailyQuote>;
  @useResult
  $Res call({String qotdDate, List<String> tags, String body, String author});
}

/// @nodoc
class _$DailyQuoteCopyWithImpl<$Res, $Val extends DailyQuote>
    implements $DailyQuoteCopyWith<$Res> {
  _$DailyQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qotdDate = null,
    Object? tags = null,
    Object? body = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      qotdDate: null == qotdDate
          ? _value.qotdDate
          : qotdDate // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyQuoteImplCopyWith<$Res>
    implements $DailyQuoteCopyWith<$Res> {
  factory _$$DailyQuoteImplCopyWith(
          _$DailyQuoteImpl value, $Res Function(_$DailyQuoteImpl) then) =
      __$$DailyQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String qotdDate, List<String> tags, String body, String author});
}

/// @nodoc
class __$$DailyQuoteImplCopyWithImpl<$Res>
    extends _$DailyQuoteCopyWithImpl<$Res, _$DailyQuoteImpl>
    implements _$$DailyQuoteImplCopyWith<$Res> {
  __$$DailyQuoteImplCopyWithImpl(
      _$DailyQuoteImpl _value, $Res Function(_$DailyQuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qotdDate = null,
    Object? tags = null,
    Object? body = null,
    Object? author = null,
  }) {
    return _then(_$DailyQuoteImpl(
      qotdDate: null == qotdDate
          ? _value.qotdDate
          : qotdDate // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DailyQuoteImpl implements _DailyQuote {
  const _$DailyQuoteImpl(
      {required this.qotdDate,
      required final List<String> tags,
      required this.body,
      required this.author})
      : _tags = tags;

  @override
  final String qotdDate;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String body;
  @override
  final String author;

  @override
  String toString() {
    return 'DailyQuote(qotdDate: $qotdDate, tags: $tags, body: $body, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyQuoteImpl &&
            (identical(other.qotdDate, qotdDate) ||
                other.qotdDate == qotdDate) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qotdDate,
      const DeepCollectionEquality().hash(_tags), body, author);

  /// Create a copy of DailyQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyQuoteImplCopyWith<_$DailyQuoteImpl> get copyWith =>
      __$$DailyQuoteImplCopyWithImpl<_$DailyQuoteImpl>(this, _$identity);
}

abstract class _DailyQuote implements DailyQuote {
  const factory _DailyQuote(
      {required final String qotdDate,
      required final List<String> tags,
      required final String body,
      required final String author}) = _$DailyQuoteImpl;

  @override
  String get qotdDate;
  @override
  List<String> get tags;
  @override
  String get body;
  @override
  String get author;

  /// Create a copy of DailyQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyQuoteImplCopyWith<_$DailyQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
