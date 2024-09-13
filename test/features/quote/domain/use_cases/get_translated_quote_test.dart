import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/entities/quote.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_translated_quote.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_translated_quote_test.mocks.dart';

@GenerateMocks([QuoteRepository])
void main() {
  late MockQuoteRepository mockQuoteRepository;
  late GetTranslatedQuote useCase;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    useCase = GetTranslatedQuote(mockQuoteRepository);
  });

  test('should get translated quote', () async {
    // arrange
    const tQuote = Quote(
      id: 1,
      author: 'author',
      body: 'text',
    );
    provideDummy<Either<Failure, Quote>>(right(tQuote));
    when(mockQuoteRepository.getTranslatedQuote(any, any))
        .thenAnswer((_) async => right(tQuote));

    // act
    final result = await useCase.execute(
      const GetTranslatedQuoteParams(
        id: 1,
        translationTarget: TranslationTarget(id: 'en', name: 'English'),
      ),
    );

    // assert
    expect(result, right(tQuote));
    verify(mockQuoteRepository.getTranslatedQuote(any, any));
    verifyNoMoreInteractions(mockQuoteRepository);
  });
}
