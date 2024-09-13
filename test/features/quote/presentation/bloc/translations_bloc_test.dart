import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/domain/entities/translation.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_translations.dart';
import 'package:kuwot/features/quote/presentation/bloc/translations_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'translations_bloc_test.mocks.dart';

@GenerateMocks([
  GetTranslations,
])
void main() {
  late MockGetTranslations mockGetTranslations;
  late TranslationsBloc translationsBloc;

  setUp(() {
    mockGetTranslations = MockGetTranslations();
    translationsBloc = TranslationsBloc(
      getTranslations: mockGetTranslations,
    );
  });

  group('GetTranslations', () {
    test('should get translations from GetTranslations use case', () async {
      // arrange
      provideDummy<Either<Failure, List<Translation>>>(right([]));
      when(mockGetTranslations.execute(any)).thenAnswer((_) async => right([]));

      // act
      translationsBloc.add(const GetTranslationsEvent());
      await untilCalled(mockGetTranslations.execute(any));

      // assert
      verify(mockGetTranslations.execute(any));
      verifyNoMoreInteractions(mockGetTranslations);
    });

    test('should emit [Loading, Loaded] when successful', () async {
      // arrange
      provideDummy<Either<Failure, List<Translation>>>(right([]));
      when(mockGetTranslations.execute(any)).thenAnswer((_) async => right([]));

      // assert later
      final expected = [
        const TranslationsLoadingState(),
        const TranslationsLoadedState(translations: []),
      ];
      expectLater(translationsBloc.stream, emitsInOrder(expected));

      // act
      translationsBloc.add(const GetTranslationsEvent());
    });

    test('should emit [Loading, Error] when unsuccessful', () async {
      // arrange
      provideDummy<Either<Failure, List<Translation>>>(
          left(const UnknownFailure(message: 'Unknown Failure')));
      when(mockGetTranslations.execute(any)).thenAnswer(
          (_) async => left(const UnknownFailure(message: 'Unknown Failure')));

      // assert later
      final expected = [
        const TranslationsLoadingState(),
        const TranslationsErrorState(message: 'Unknown Failure'),
      ];
      expectLater(translationsBloc.stream, emitsInOrder(expected));

      // act
      translationsBloc.add(const GetTranslationsEvent());
    });
  });
}
