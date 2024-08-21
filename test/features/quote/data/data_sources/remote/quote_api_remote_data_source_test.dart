import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/quote_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../_responses/_response.dart';
import 'quote_api_remote_data_source_test.mocks.dart';

@GenerateMocks([Network])
void main() {
  late MockNetwork network;
  late QuoteApiRemoteDataSource dataSource;

  setUp(() {
    network = MockNetwork();
    dataSource = QuoteApiRemoteApiImpl(network: network);
  });

  group('getDailyQuote', () {
    test('should return DailyQuoteModel when response is successful', () async {
      // arrange
      final tResponse = readResponse('quote');
      when(network.get(any)).thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getQuote();
      // assert
      expect(result, isA<QuoteModel>());
    });
  });
}
