// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServerErrorModel {
  String get message;
  int get code;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerErrorModelCopyWith<ServerErrorModel> get copyWith =>
      _$ServerErrorModelCopyWithImpl<ServerErrorModel>(
          this as ServerErrorModel, _$identity);

  /// Serializes this ServerErrorModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerErrorModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @override
  String toString() {
    return 'ServerErrorModel(message: $message, code: $code)';
  }
}

/// @nodoc
abstract mixin class $ServerErrorModelCopyWith<$Res> {
  factory $ServerErrorModelCopyWith(
          ServerErrorModel value, $Res Function(ServerErrorModel) _then) =
      _$ServerErrorModelCopyWithImpl;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$ServerErrorModelCopyWithImpl<$Res>
    implements $ServerErrorModelCopyWith<$Res> {
  _$ServerErrorModelCopyWithImpl(this._self, this._then);

  final ServerErrorModel _self;
  final $Res Function(ServerErrorModel) _then;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ServerErrorModel implements ServerErrorModel {
  const _ServerErrorModel({required this.message, required this.code});
  factory _ServerErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorModelFromJson(json);

  @override
  final String message;
  @override
  final int code;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServerErrorModelCopyWith<_ServerErrorModel> get copyWith =>
      __$ServerErrorModelCopyWithImpl<_ServerErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServerErrorModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerErrorModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @override
  String toString() {
    return 'ServerErrorModel(message: $message, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$ServerErrorModelCopyWith<$Res>
    implements $ServerErrorModelCopyWith<$Res> {
  factory _$ServerErrorModelCopyWith(
          _ServerErrorModel value, $Res Function(_ServerErrorModel) _then) =
      __$ServerErrorModelCopyWithImpl;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$ServerErrorModelCopyWithImpl<$Res>
    implements _$ServerErrorModelCopyWith<$Res> {
  __$ServerErrorModelCopyWithImpl(this._self, this._then);

  final _ServerErrorModel _self;
  final $Res Function(_ServerErrorModel) _then;

  /// Create a copy of ServerErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_ServerErrorModel(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
