import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/domain/use_case.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';

class GetBackgroundPhotos extends UseCase<BackgroundPhotos, NoParams> {
  final QuoteRepository _repository;

  GetBackgroundPhotos(QuoteRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, BackgroundPhotos>> execute(NoParams params) async {
    return await _repository.getBackgroundPhotos();
  }
}
