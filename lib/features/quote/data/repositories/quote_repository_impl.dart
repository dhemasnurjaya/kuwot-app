import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/quote_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/entities/quote.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final QuoteApiRemoteDataSource quoteDataSource;
  final PexelsApiRemoteDataSource pexelsDataSource;

  QuoteRepositoryImpl({
    required this.quoteDataSource,
    required this.pexelsDataSource,
  });

  @override
  Future<Either<Failure, Quote>> getQuote(
    TranslationTarget? translationTarget,
  ) async {
    try {
      final query =
          translationTarget != null ? "lang=${translationTarget.id}" : null;
      final quote = await quoteDataSource.getQuote(query: query);
      return right(Quote.fromModel(quote));
    } on Exception catch (e) {
      return left(
        UnknownFailure(
          message: e.toString(),
          cause: e,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Quote>> getTranslatedQuote(
    int id,
    TranslationTarget translationTarget,
  ) async {
    try {
      final query = "lang=${translationTarget.id}";
      final quote = await quoteDataSource.getTranslatedQuote(id, query: query);
      return right(Quote.fromModel(quote));
    } on Exception catch (e) {
      return left(
        UnknownFailure(
          message: e.toString(),
          cause: e,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BackgroundPhotos>> getBackgroundPhotos() async {
    try {
      final photos = await pexelsDataSource.getCuratedPhotos();
      return right(BackgroundPhotos.fromModel(photos));
    } on Exception catch (e) {
      return left(
        UnknownFailure(
          message: e.toString(),
          cause: e,
        ),
      );
    }
  }
}
