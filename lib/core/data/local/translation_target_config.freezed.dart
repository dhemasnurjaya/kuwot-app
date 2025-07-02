// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_target_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslationTarget {
  String get id;
  String get name;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TranslationTargetCopyWith<TranslationTarget> get copyWith =>
      _$TranslationTargetCopyWithImpl<TranslationTarget>(
          this as TranslationTarget, _$identity);

  /// Serializes this TranslationTarget to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TranslationTarget &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'TranslationTarget(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $TranslationTargetCopyWith<$Res> {
  factory $TranslationTargetCopyWith(
          TranslationTarget value, $Res Function(TranslationTarget) _then) =
      _$TranslationTargetCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$TranslationTargetCopyWithImpl<$Res>
    implements $TranslationTargetCopyWith<$Res> {
  _$TranslationTargetCopyWithImpl(this._self, this._then);

  final TranslationTarget _self;
  final $Res Function(TranslationTarget) _then;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TranslationTarget implements TranslationTarget {
  const _TranslationTarget({required this.id, required this.name});
  factory _TranslationTarget.fromJson(Map<String, dynamic> json) =>
      _$TranslationTargetFromJson(json);

  @override
  final String id;
  @override
  final String name;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TranslationTargetCopyWith<_TranslationTarget> get copyWith =>
      __$TranslationTargetCopyWithImpl<_TranslationTarget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TranslationTargetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TranslationTarget &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'TranslationTarget(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$TranslationTargetCopyWith<$Res>
    implements $TranslationTargetCopyWith<$Res> {
  factory _$TranslationTargetCopyWith(
          _TranslationTarget value, $Res Function(_TranslationTarget) _then) =
      __$TranslationTargetCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$TranslationTargetCopyWithImpl<$Res>
    implements _$TranslationTargetCopyWith<$Res> {
  __$TranslationTargetCopyWithImpl(this._self, this._then);

  final _TranslationTarget _self;
  final $Res Function(_TranslationTarget) _then;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_TranslationTarget(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
