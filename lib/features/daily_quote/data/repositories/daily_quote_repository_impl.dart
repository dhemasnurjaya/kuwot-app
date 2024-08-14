import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/server_failure.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/favqs_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/domain/entities/daily_quote.dart';
import 'package:kuwot/features/daily_quote/domain/repositories/daily_quote_repository.dart';

class DailyQuoteRepositoryImpl implements DailyQuoteRepository {
  final FavqsApiRemoteDataSource remoteDataSource;

  DailyQuoteRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, DailyQuote>> getDailyQuote() async {
    try {
      final result = await remoteDataSource.getDailyQuote();
      return right(DailyQuote.fromModel(result));
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
