import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/entities/quote.dart';

abstract class QuoteRepository {
  Future<Either<Failure, BackgroundPhotos>> getBackgroundPhotos();

  Future<Either<Failure, Quote>> getQuote(
    TranslationTarget? translationTarget,
  );

  Future<Either<Failure, Quote>> getTranslatedQuote(
    int id,
    TranslationTarget translationTarget,
  );
}
