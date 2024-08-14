import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_quote_model.freezed.dart';
part 'daily_quote_model.g.dart';

@freezed
class DailyQuoteModel with _$DailyQuoteModel {
  const factory DailyQuoteModel({
    @JsonKey(name: 'qotd_date') required String qotdDate,
    required DailyQuoteQuote quote,
  }) = _DailyQuoteModel;

  factory DailyQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$DailyQuoteModelFromJson(json);
}

@freezed
class DailyQuoteQuote with _$DailyQuoteQuote {
  const factory DailyQuoteQuote({
    required int id,
    required bool dialogue,
    required bool private,
    required List<String> tags,
    required String url,
    @JsonKey(name: 'favorites_count') required int favoritesCount,
    @JsonKey(name: 'upvotes_count') required int upvotesCount,
    @JsonKey(name: 'downvotes_count') required int downvotesCount,
    required String author,
    @JsonKey(name: 'author_permalink') required String authorPermalink,
    required String body,
  }) = _DailyQuoteQuote;

  factory DailyQuoteQuote.fromJson(Map<String, dynamic> json) =>
      _$DailyQuoteQuoteFromJson(json);
}
