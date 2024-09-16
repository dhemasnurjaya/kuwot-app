// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerErrorModelImpl _$$ServerErrorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerErrorModelImpl(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ServerErrorModelImplToJson(
        _$ServerErrorModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
