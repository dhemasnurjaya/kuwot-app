import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/domain/use_case.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/daily_quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/daily_quote/domain/repositories/daily_quote_repository.dart';

class GetBackgroundPhotos extends UseCase<BackgroundPhotos, NoParams> {
  final DailyQuoteRepository _repository;

  GetBackgroundPhotos(DailyQuoteRepository repository)
      : _repository = repository;

  @override
  Future<Either<Failure, BackgroundPhotos>> execute(NoParams params) async {
    return await _repository.getBackgroundPhotos();
  }
}
