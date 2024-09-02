// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: json['id'] as String,
      description: json['description'] as String?,
      color: json['color'] as String,
      blurHash: json['blurHash'] as String,
      url: json['url'] as String,
      originUrl: json['originUrl'] as String,
      authorName: json['authorName'] as String,
      authorProfileImageUrl: json['authorProfileImageUrl'] as String,
      authorUrl: json['authorUrl'] as String,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'url': instance.url,
      'originUrl': instance.originUrl,
      'authorName': instance.authorName,
      'authorProfileImageUrl': instance.authorProfileImageUrl,
      'authorUrl': instance.authorUrl,
    };
