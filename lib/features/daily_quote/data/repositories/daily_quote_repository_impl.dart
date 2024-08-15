import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/server_failure.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/favqs_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/daily_quote/domain/entities/daily_quote.dart';
import 'package:kuwot/features/daily_quote/domain/repositories/daily_quote_repository.dart';

class DailyQuoteRepositoryImpl implements DailyQuoteRepository {
  final FavqsApiRemoteDataSource favqsDataSource;
  final PexelsApiRemoteDataSource pexelsDataSource;

  DailyQuoteRepositoryImpl({
    required this.favqsDataSource,
    required this.pexelsDataSource,
  });

  @override
  Future<Either<Failure, DailyQuote>> getDailyQuote() async {
    try {
      final quote = await favqsDataSource.getDailyQuote();
      return right(DailyQuote.fromModel(quote));
    } on Exception catch (e) {
      return left(
        ServerFailure(
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
        ServerFailure(
          message: e.toString(),
          cause: e,
        ),
      );
    }
  }
}
