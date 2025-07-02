// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslationModel {
  String get id;
  String get lang;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TranslationModelCopyWith<TranslationModel> get copyWith =>
      _$TranslationModelCopyWithImpl<TranslationModel>(
          this as TranslationModel, _$identity);

  /// Serializes this TranslationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TranslationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lang);

  @override
  String toString() {
    return 'TranslationModel(id: $id, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class $TranslationModelCopyWith<$Res> {
  factory $TranslationModelCopyWith(
          TranslationModel value, $Res Function(TranslationModel) _then) =
      _$TranslationModelCopyWithImpl;
  @useResult
  $Res call({String id, String lang});
}

/// @nodoc
class _$TranslationModelCopyWithImpl<$Res>
    implements $TranslationModelCopyWith<$Res> {
  _$TranslationModelCopyWithImpl(this._self, this._then);

  final TranslationModel _self;
  final $Res Function(TranslationModel) _then;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lang = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _self.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TranslationModel implements TranslationModel {
  const _TranslationModel({required this.id, required this.lang});
  factory _TranslationModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationModelFromJson(json);

  @override
  final String id;
  @override
  final String lang;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TranslationModelCopyWith<_TranslationModel> get copyWith =>
      __$TranslationModelCopyWithImpl<_TranslationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TranslationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TranslationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lang);

  @override
  String toString() {
    return 'TranslationModel(id: $id, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class _$TranslationModelCopyWith<$Res>
    implements $TranslationModelCopyWith<$Res> {
  factory _$TranslationModelCopyWith(
          _TranslationModel value, $Res Function(_TranslationModel) _then) =
      __$TranslationModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String lang});
}

/// @nodoc
class __$TranslationModelCopyWithImpl<$Res>
    implements _$TranslationModelCopyWith<$Res> {
  __$TranslationModelCopyWithImpl(this._self, this._then);

  final _TranslationModel _self;
  final $Res Function(_TranslationModel) _then;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lang = null,
  }) {
    return _then(_TranslationModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _self.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
