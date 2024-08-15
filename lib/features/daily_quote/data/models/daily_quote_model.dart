import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_quote_model.freezed.dart';
part 'daily_quote_model.g.dart';

@freezed
class DailyQuoteModel with _$DailyQuoteModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory DailyQuoteModel({
    required String qotdDate,
    required DailyQuoteQuote quote,
  }) = _DailyQuoteModel;

  factory DailyQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$DailyQuoteModelFromJson(json);
}

@freezed
class DailyQuoteQuote with _$DailyQuoteQuote {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory DailyQuoteQuote({
    required int id,
    required bool dialogue,
    required bool private,
    required List<String> tags,
    required String url,
    required int favoritesCount,
    required int upvotesCount,
    required int downvotesCount,
    required String author,
    required String authorPermalink,
    required String body,
  }) = _DailyQuoteQuote;

  factory DailyQuoteQuote.fromJson(Map<String, dynamic> json) =>
      _$DailyQuoteQuoteFromJson(json);
}
