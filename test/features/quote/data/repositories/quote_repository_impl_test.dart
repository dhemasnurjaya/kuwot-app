import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/quote_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/models/photo_list_model.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';
import 'package:kuwot/features/quote/data/repositories/quote_repository_impl.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/entities/quote.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../_responses/_response.dart';
import 'quote_repository_impl_test.mocks.dart';

@GenerateMocks([
  QuoteApiRemoteDataSource,
  PexelsApiRemoteDataSource,
])
void main() {
  late QuoteRepositoryImpl quoteRepository;
  late MockQuoteApiRemoteDataSource mockQuoteApiRemoteDataSource;
  late MockPexelsApiRemoteDataSource mockPexelsApiRemoteDataSource;

  setUp(() {
    mockQuoteApiRemoteDataSource = MockQuoteApiRemoteDataSource();
    mockPexelsApiRemoteDataSource = MockPexelsApiRemoteDataSource();

    quoteRepository = QuoteRepositoryImpl(
      quoteDataSource: mockQuoteApiRemoteDataSource,
      pexelsDataSource: mockPexelsApiRemoteDataSource,
    );
  });

  const tQuoteModel = QuoteModel(
    id: 1,
    a: 'author',
    q: 'text',
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
      when(mockQuoteApiRemoteDataSource.getQuote(query: anyNamed('query')))
          .thenAnswer((_) async => tQuoteModel);

      // act
      final result = await quoteRepository.getQuote(tTranslationTarget);

      // assert
      verify(mockQuoteApiRemoteDataSource.getQuote(query: anyNamed('query')));
      result.fold(
        (failure) => fail('Expected Quote, but got $failure'),
        (quote) => expect(quote, tExpectedQuote),
      );
      verifyNoMoreInteractions(mockQuoteApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockQuoteApiRemoteDataSource.getQuote(query: anyNamed('query')))
          .thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getQuote(null);

      // assert
      verify(mockQuoteApiRemoteDataSource.getQuote(query: anyNamed('query')));
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (quote) => fail('Expected UnknownFailure, but got $quote'),
      );
      verifyNoMoreInteractions(mockQuoteApiRemoteDataSource);
    });
  });

  group('getTranslatedQuote', () {
    const tQuoteId = 1;

    test('should return a Quote entity', () async {
      // arrange
      when(mockQuoteApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      )).thenAnswer((_) async => tQuoteModel);

      // act
      final result = await quoteRepository.getTranslatedQuote(
        tQuoteId,
        tTranslationTarget,
      );

      // assert
      verify(mockQuoteApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      ));
      result.fold(
        (failure) => fail('Expected Quote, but got $failure'),
        (quote) => expect(quote, tExpectedQuote),
      );
      verifyNoMoreInteractions(mockQuoteApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockQuoteApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      )).thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getTranslatedQuote(
        tQuoteId,
        tTranslationTarget,
      );

      // assert
      verify(mockQuoteApiRemoteDataSource.getTranslatedQuote(
        any,
        query: anyNamed('query'),
      ));
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (quote) => fail('Expected UnknownFailure, but got $quote'),
      );
      verifyNoMoreInteractions(mockQuoteApiRemoteDataSource);
    });
  });

  group('getBackgroundPhotos', () {
    test('should return a BackgroundPhotos entity', () async {
      // arrange
      final tPhotoListModel =
          PhotoListModel.fromJson(jsonDecode(readResponse('curated_photos')));
      final tExpectedPhotos = BackgroundPhotos(
        photos: tPhotoListModel.photos
            .map((p) => Photo(
                  url: BackgroundPhotos.buildPortraitImageUrl(p.src.original),
                  avgColor: p.avgColor,
                ))
            .toList(),
      );
      when(mockPexelsApiRemoteDataSource.getCuratedPhotos())
          .thenAnswer((_) async => tPhotoListModel);

      // act
      final result = await quoteRepository.getBackgroundPhotos();

      // assert
      verify(mockPexelsApiRemoteDataSource.getCuratedPhotos());
      result.fold(
        (failure) => fail('Expected BackgroundPhotos, but got $failure'),
        (photos) => expect(photos, tExpectedPhotos),
      );
      verifyNoMoreInteractions(mockPexelsApiRemoteDataSource);
    });

    test('should return UnknownFailure when an exception is thrown', () async {
      // arrange
      when(mockPexelsApiRemoteDataSource.getCuratedPhotos())
          .thenThrow(Exception('test'));

      // act
      final result = await quoteRepository.getBackgroundPhotos();

      // assert
      verify(mockPexelsApiRemoteDataSource.getCuratedPhotos());
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (photos) => fail('Expected UnknownFailure, but got $photos'),
      );
      verifyNoMoreInteractions(mockPexelsApiRemoteDataSource);
    });
  });
}
