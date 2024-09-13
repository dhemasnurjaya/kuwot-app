// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_target_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranslationTarget _$TranslationTargetFromJson(Map<String, dynamic> json) {
  return _TranslationTarget.fromJson(json);
}

/// @nodoc
mixin _$TranslationTarget {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TranslationTarget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationTargetCopyWith<TranslationTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationTargetCopyWith<$Res> {
  factory $TranslationTargetCopyWith(
          TranslationTarget value, $Res Function(TranslationTarget) then) =
      _$TranslationTargetCopyWithImpl<$Res, TranslationTarget>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$TranslationTargetCopyWithImpl<$Res, $Val extends TranslationTarget>
    implements $TranslationTargetCopyWith<$Res> {
  _$TranslationTargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationTargetImplCopyWith<$Res>
    implements $TranslationTargetCopyWith<$Res> {
  factory _$$TranslationTargetImplCopyWith(_$TranslationTargetImpl value,
          $Res Function(_$TranslationTargetImpl) then) =
      __$$TranslationTargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$TranslationTargetImplCopyWithImpl<$Res>
    extends _$TranslationTargetCopyWithImpl<$Res, _$TranslationTargetImpl>
    implements _$$TranslationTargetImplCopyWith<$Res> {
  __$$TranslationTargetImplCopyWithImpl(_$TranslationTargetImpl _value,
      $Res Function(_$TranslationTargetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TranslationTargetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationTargetImpl implements _TranslationTarget {
  const _$TranslationTargetImpl({required this.id, required this.name});

  factory _$TranslationTargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationTargetImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'TranslationTarget(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationTargetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationTargetImplCopyWith<_$TranslationTargetImpl> get copyWith =>
      __$$TranslationTargetImplCopyWithImpl<_$TranslationTargetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationTargetImplToJson(
      this,
    );
  }
}

abstract class _TranslationTarget implements TranslationTarget {
  const factory _TranslationTarget(
      {required final String id,
      required final String name}) = _$TranslationTargetImpl;

  factory _TranslationTarget.fromJson(Map<String, dynamic> json) =
      _$TranslationTargetImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of TranslationTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationTargetImplCopyWith<_$TranslationTargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
