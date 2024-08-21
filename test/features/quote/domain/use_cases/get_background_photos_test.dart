import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_background_photos.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_background_photos_test.mocks.dart';

@GenerateMocks([QuoteRepository])
void main() {
  late MockQuoteRepository mockQuoteRepository;
  late GetBackgroundPhotos useCase;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    useCase = GetBackgroundPhotos(mockQuoteRepository);
  });

  test('should get background photos', () async {
    // arrange
    const tPhotos = BackgroundPhotos(photos: []);
    provideDummy<Either<Failure, BackgroundPhotos>>(right(tPhotos));
    when(mockQuoteRepository.getBackgroundPhotos())
        .thenAnswer((_) async => right(tPhotos));

    // act
    final result = await useCase.execute(const NoParams());

    // assert
    expect(result, right(tPhotos));
    verify(mockQuoteRepository.getBackgroundPhotos());
    verifyNoMoreInteractions(mockQuoteRepository);
  });
}
