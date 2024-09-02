import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_image.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_background_images.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_background_photos_test.mocks.dart';

@GenerateMocks([QuoteRepository])
void main() {
  late MockQuoteRepository mockQuoteRepository;
  late GetBackgroundImages useCase;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    useCase = GetBackgroundImages(mockQuoteRepository);
  });

  test('should get background photos', () async {
    // arrange
    const tImages = <BackgroundImage>[];
    provideDummy<Either<Failure, List<BackgroundImage>>>(right(tImages));
    when(mockQuoteRepository.getBackgroundImages())
        .thenAnswer((_) async => right(tImages));

    // act
    final result = await useCase.execute(const NoParams());

    // assert
    expect(result, right(tImages));
    verify(mockQuoteRepository.getBackgroundImages());
    verifyNoMoreInteractions(mockQuoteRepository);
  });
}
