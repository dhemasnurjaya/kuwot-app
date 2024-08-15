import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot/features/daily_quote/data/models/daily_quote_model.dart';

part 'daily_quote.freezed.dart';

@freezed
class DailyQuote with _$DailyQuote {
  const factory DailyQuote({
    required String qotdDate,
    required List<String> tags,
    required String body,
    required String author,
  }) = _DailyQuote;

  static DailyQuote fromModel(DailyQuoteModel model) => DailyQuote(
        qotdDate: model.qotdDate,
        tags: model.quote.tags,
        body: model.quote.body,
        author: model.quote.author,
      );
}
