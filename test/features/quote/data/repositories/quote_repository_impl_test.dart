import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/kuwot_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/models/image_model.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';
import 'package:kuwot/features/quote/data/repositories/quote_repository_impl.dart';
import 'package:kuwot/features/quote/domain/entities/background_image.dart';
import 'package:kuwot/features/quote/domain/entities/quote.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../_responses/_response.dart';
import 'quote_repository_impl_test.mocks.dart';

@GenerateMocks([
  KuwotApiRemoteDataSource,
])
void main() {
  late QuoteRepositoryImpl quoteRepository;
  late MockKuwotApiRemoteDataSource mockKuwotApiRemoteDataSource;

  setUp(() {
    mockKuwotApiRemoteDataSource = MockKuwotApiRemoteDataSource();

    quoteRepository = QuoteRepositoryImpl(
      quoteDataSource: mockKuwotApiRemoteDataSource,
    );
  });

  const tQuoteModel = QuoteModel(
    id: 1,
    author: 'author',
    text: 'text',
  );
  const tExpectedQuote = Quote(
    id: 1,
    author: 'author',
    body: 'text',
  );
  const tTranslationTarget = TranslationTarget('en', 'English');

  group('getQuote', () {
    test('should return a Quote entity', () async {
      // arrange
      when(mockKuwotApiRemoteDataSource.getQuote(query: anyNamed('query')))
          .thenAnswer((_) async => tQuoteModel);

      // act
      final result = await quoteRepository.getQuote(tTranslationTarget);

      // assert
      verify(mockKuwotApiRemoteDataSource.getQuote(query: anyNamed('query')));
      result.fold(
        (failure) => fail('Expected Quote, but got $failure'),
        (quote) => expect(quote, tExpectedQuote),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockKuwotApiRemoteDataSource.getQuote(query: anyNamed('query')))
          .thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getQuote(null);

      // assert
      verify(mockKuwotApiRemoteDataSource.getQuote(query: anyNamed('query')));
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (quote) => fail('Expected UnknownFailure, but got $quote'),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });
  });

  group('getTranslatedQuote', () {
    const tQuoteId = 1;

    test('should return a Quote entity', () async {
      // arrange
      when(mockKuwotApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      )).thenAnswer((_) async => tQuoteModel);

      // act
      final result = await quoteRepository.getTranslatedQuote(
        tQuoteId,
        tTranslationTarget,
      );

      // assert
      verify(mockKuwotApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      ));
      result.fold(
        (failure) => fail('Expected Quote, but got $failure'),
        (quote) => expect(quote, tExpectedQuote),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockKuwotApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      )).thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getTranslatedQuote(
        tQuoteId,
        tTranslationTarget,
      );

      // assert
      verify(mockKuwotApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      ));
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (quote) => fail('Expected UnknownFailure, but got $quote'),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });
  });

  group('getBackgroundImages', () {
    test('should return a List of BackgroundImage entity', () async {
      // arrange
      final tImageListModel =
          (jsonDecode(readResponse('random_images')) as List)
              .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList();
      final tExpectedImages = tImageListModel.map((e) => BackgroundImage(
            id: e.id,
            description: e.description ?? 'no description',
            color: e.color,
            blurHash: e.blurHash,
            url: e.url,
            originUrl: e.originUrl,
            authorName: e.authorName,
            authorProfileImageUrl: e.authorProfileImageUrl,
            authorUrl: e.authorUrl,
          ));
      when(mockKuwotApiRemoteDataSource.getRandomImages())
          .thenAnswer((_) async => tImageListModel);

      // act
      final result = await quoteRepository.getBackgroundImages();

      // assert
      verify(mockKuwotApiRemoteDataSource.getRandomImages());
      result.fold(
        (failure) => fail('Expected BackgroundImages, but got $failure'),
        (photos) => expect(photos, tExpectedImages),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockKuwotApiRemoteDataSource.getRandomImages())
          .thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getBackgroundImages();

      // assert
      verify(mockKuwotApiRemoteDataSource.getRandomImages());
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (images) => fail('Expected UnknownFailure, but got $images'),
      );
      verifyNoMoreInteractions(mockKuwotApiRemoteDataSource);
    });
  });
}
