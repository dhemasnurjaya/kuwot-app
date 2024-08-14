import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/domain/use_case.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/daily_quote/domain/entities/daily_quote.dart';
import 'package:kuwot/features/daily_quote/domain/repositories/daily_quote_repository.dart';

class GetDailyQuote extends UseCase<DailyQuote, NoParams> {
  final DailyQuoteRepository _repository;

  GetDailyQuote(DailyQuoteRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, DailyQuote>> execute(NoParams params) async {
    return await _repository.getDailyQuote();
  }
}
