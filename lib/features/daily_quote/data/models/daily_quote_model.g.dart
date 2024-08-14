// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyQuoteModelImpl _$$DailyQuoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyQuoteModelImpl(
      qotdDate: json['qotd_date'] as String,
      quote: DailyQuoteQuote.fromJson(json['quote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyQuoteModelImplToJson(
        _$DailyQuoteModelImpl instance) =>
    <String, dynamic>{
      'qotd_date': instance.qotdDate,
      'quote': instance.quote,
    };

_$DailyQuoteQuoteImpl _$$DailyQuoteQuoteImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyQuoteQuoteImpl(
      id: (json['id'] as num).toInt(),
      dialogue: json['dialogue'] as bool,
      private: json['private'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      favoritesCount: (json['favorites_count'] as num).toInt(),
      upvotesCount: (json['upvotes_count'] as num).toInt(),
      downvotesCount: (json['downvotes_count'] as num).toInt(),
      author: json['author'] as String,
      authorPermalink: json['author_permalink'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$DailyQuoteQuoteImplToJson(
        _$DailyQuoteQuoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dialogue': instance.dialogue,
      'private': instance.private,
      'tags': instance.tags,
      'url': instance.url,
      'favorites_count': instance.favoritesCount,
      'upvotes_count': instance.upvotesCount,
      'downvotes_count': instance.downvotesCount,
      'author': instance.author,
      'author_permalink': instance.authorPermalink,
      'body': instance.body,
    };
