import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/domain/use_case.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';

class TranslateText extends UseCase<String, TranslateTextParams> {
  final QuoteRepository _repository;

  TranslateText(QuoteRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, String>> execute(
    TranslateTextParams params,
  ) {
    return _repository.translate(params.target, params.text);
  }
}

class TranslateTextParams extends Equatable {
  final String text;
  final TranslationTarget target;

  const TranslateTextParams({
    required this.text,
    required this.target,
  });

  @override
  List<Object> get props => [text, target];
}
