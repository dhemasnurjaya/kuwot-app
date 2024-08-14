import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot/features/daily_quote/data/models/daily_quote_model.dart';

part 'daily_quote.freezed.dart';

@freezed
class DailyQuote with _$DailyQuote {
  const factory DailyQuote({
    required String qotdDate,
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
  }) = _DailyQuote;

  factory DailyQuote.fromModel(DailyQuoteModel model) => DailyQuote(
        qotdDate: model.qotdDate,
        id: model.quote.id,
        dialogue: model.quote.dialogue,
        private: model.quote.private,
        tags: model.quote.tags,
        url: model.quote.url,
        favoritesCount: model.quote.favoritesCount,
        upvotesCount: model.quote.upvotesCount,
        downvotesCount: model.quote.downvotesCount,
        author: model.quote.author,
        authorPermalink: model.quote.authorPermalink,
        body: model.quote.body,
      );
}
