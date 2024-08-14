import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/daily_quote/domain/entities/daily_quote.dart';

abstract class DailyQuoteRepository {
  Future<Either<Failure, DailyQuote>> getDailyQuote();
}
