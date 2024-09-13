import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/auth.dart';
import 'package:kuwot/core/env.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/kuwot_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/models/image_model.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';
import 'package:kuwot/features/quote/data/models/translation_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../_responses/_response.dart';
import 'kuwot_api_remote_data_source_test.mocks.dart';

@GenerateMocks([Env, Auth, Network])
void main() {
  late MockAuth auth;
  late MockEnv env;
  late MockNetwork network;
  late KuwotApiRemoteDataSource dataSource;

  setUp(() {
    auth = MockAuth();
    env = MockEnv();
    network = MockNetwork();
    dataSource = KuwotApiRemoteApiImpl(
      auth: auth,
      network: network,
    );
  });

  group('getDailyQuote', () {
    test('should return random quote when response is successful', () async {
      // arrange
      final tResponse = readResponse('quote');
      when(auth.getAccessToken).thenReturn('test_token');
      when(env.authPublicKey).thenReturn('test');
      when(network.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getQuote();
      // assert
      expect(result, isA<QuoteModel>());
    });

    test('should return translated quote when response is successful',
        () async {
      // arrange
      final tResponse = readResponse('quote');
      when(auth.getAccessToken).thenReturn('test_token');
      when(env.authPublicKey).thenReturn('test');
      when(network.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getTranslatedQuote(1);
      // assert
      expect(result, isA<QuoteModel>());
    });

    test('should return random images when response is successful', () async {
      // arrange
      final tResponse = readResponse('random_images');
      when(auth.getAccessToken).thenReturn('test_token');
      when(env.authPublicKey).thenReturn('test');
      when(network.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getRandomImages();
      // assert
      expect(result, isA<List<ImageModel>>());
    });

    test('should return translations when response is successful', () async {
      // arrange
      final tResponse = readResponse('translations');
      when(auth.getAccessToken).thenReturn('test_token');
      when(env.authPublicKey).thenReturn('test');
      when(network.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getTranslations();
      // assert
      expect(result, isA<List<TranslationModel>>());
    });
  });
}
