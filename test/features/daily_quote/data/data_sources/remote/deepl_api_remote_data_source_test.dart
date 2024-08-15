import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/deepl_api_remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../_responses/_response.dart';
import 'deepl_api_remote_data_source_test.mocks.dart';

@GenerateMocks([Network])
void main() {
  late MockNetwork network;
  late DeeplApiRemoteDataSource dataSource;

  setUp(() async {
    await dotenv.load(fileName: '.env');
    network = MockNetwork();
    dataSource = DeeplApiRemoteDataSourceImpl(network: network);
  });

  group('translateText', () {
    test('should return translated text', () async {
      // arrange
      final tResponse = readResponse('translated_text');
      when(network.post(any,
              body: anyNamed('body'), headers: anyNamed('headers')))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.translateText('Hello, world!', 'ID');
      // assert
      expect(result, 'Halo, dunia!');
    });
  });
}
