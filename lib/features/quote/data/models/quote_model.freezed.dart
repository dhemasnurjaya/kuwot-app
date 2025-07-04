// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuoteModel {
  int get id;
  String get text;
  String get author;

  /// Create a copy of QuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuoteModelCopyWith<QuoteModel> get copyWith =>
      _$QuoteModelCopyWithImpl<QuoteModel>(this as QuoteModel, _$identity);

  /// Serializes this QuoteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuoteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, author);

  @override
  String toString() {
    return 'QuoteModel(id: $id, text: $text, author: $author)';
  }
}

/// @nodoc
abstract mixin class $QuoteModelCopyWith<$Res> {
  factory $QuoteModelCopyWith(
          QuoteModel value, $Res Function(QuoteModel) _then) =
      _$QuoteModelCopyWithImpl;
  @useResult
  $Res call({int id, String text, String author});
}

/// @nodoc
class _$QuoteModelCopyWithImpl<$Res> implements $QuoteModelCopyWith<$Res> {
  _$QuoteModelCopyWithImpl(this._self, this._then);

  final QuoteModel _self;
  final $Res Function(QuoteModel) _then;

  /// Create a copy of QuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? author = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _QuoteModel implements QuoteModel {
  const _QuoteModel(
      {required this.id, required this.text, required this.author});
  factory _QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  final String author;

  /// Create a copy of QuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuoteModelCopyWith<_QuoteModel> get copyWith =>
      __$QuoteModelCopyWithImpl<_QuoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuoteModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuoteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, author);

  @override
  String toString() {
    return 'QuoteModel(id: $id, text: $text, author: $author)';
  }
}

/// @nodoc
abstract mixin class _$QuoteModelCopyWith<$Res>
    implements $QuoteModelCopyWith<$Res> {
  factory _$QuoteModelCopyWith(
          _QuoteModel value, $Res Function(_QuoteModel) _then) =
      __$QuoteModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String text, String author});
}

/// @nodoc
class __$QuoteModelCopyWithImpl<$Res> implements _$QuoteModelCopyWith<$Res> {
  __$QuoteModelCopyWithImpl(this._self, this._then);

  final _QuoteModel _self;
  final $Res Function(_QuoteModel) _then;

  /// Create a copy of QuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? author = null,
  }) {
    return _then(_QuoteModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
