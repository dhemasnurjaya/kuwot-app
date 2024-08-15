import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot/features/daily_quote/data/models/daily_quote_model.dart';

part 'daily_quote.freezed.dart';

@freezed
class DailyQuote with _$DailyQuote {
  const factory DailyQuote({
    required String qotdDate,
    required List<String> tags,
    required String author,
    required String body,
    String? translatedBody,
  }) = _DailyQuote;

  static DailyQuote fromModel(
    DailyQuoteModel model, {
    String? translatedBody,
  }) =>
      DailyQuote(
        qotdDate: model.qotdDate,
        tags: model.quote.tags,
        author: model.quote.author,
        body: model.quote.body,
        translatedBody: translatedBody,
      );
}
