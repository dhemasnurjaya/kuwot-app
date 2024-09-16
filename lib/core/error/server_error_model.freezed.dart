// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerErrorModel _$ServerErrorModelFromJson(Map<String, dynamic> json) {
  return _ServerErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ServerErrorModel {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ServerErrorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerErrorModelCopyWith<ServerErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorModelCopyWith<$Res> {
  factory $ServerErrorModelCopyWith(
          ServerErrorModel value, $Res Function(ServerErrorModel) then) =
      _$ServerErrorModelCopyWithImpl<$Res, ServerErrorModel>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$ServerErrorModelCopyWithImpl<$Res, $Val extends ServerErrorModel>
    implements $ServerErrorModelCopyWith<$Res> {
  _$ServerErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorModelImplCopyWith<$Res>
    implements $ServerErrorModelCopyWith<$Res> {
  factory _$$ServerErrorModelImplCopyWith(_$ServerErrorModelImpl value,
          $Res Function(_$ServerErrorModelImpl) then) =
      __$$ServerErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerErrorModelImplCopyWithImpl<$Res>
    extends _$ServerErrorModelCopyWithImpl<$Res, _$ServerErrorModelImpl>
    implements _$$ServerErrorModelImplCopyWith<$Res> {
  __$$ServerErrorModelImplCopyWithImpl(_$ServerErrorModelImpl _value,
      $Res Function(_$ServerErrorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ServerErrorModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerErrorModelImpl implements _ServerErrorModel {
  const _$ServerErrorModelImpl({required this.message, required this.code});

  factory _$ServerErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerErrorModelImplFromJson(json);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'ServerErrorModel(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorModelImplCopyWith<_$ServerErrorModelImpl> get copyWith =>
      __$$ServerErrorModelImplCopyWithImpl<_$ServerErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ServerErrorModel implements ServerErrorModel {
  const factory _ServerErrorModel(
      {required final String message,
      required final int code}) = _$ServerErrorModelImpl;

  factory _ServerErrorModel.fromJson(Map<String, dynamic> json) =
      _$ServerErrorModelImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorModelImplCopyWith<_$ServerErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
