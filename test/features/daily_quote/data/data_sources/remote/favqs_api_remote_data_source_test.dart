import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/favqs_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/data/models/daily_quote_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../_responses/_response.dart';
import 'favqs_api_remote_data_source_test.mocks.dart';

@GenerateMocks([Network])
void main() {
  late MockNetwork network;
  late FavqsApiRemoteDataSource dataSource;

  setUp(() {
    network = MockNetwork();
    dataSource = FavqsApiRemoteApiImpl(network: network);
  });

  group('getDailyQuote', () {
    test('should return DailyQuoteModel when response is successful', () async {
      // arrange
      final tResponse = readResponse('daily_quote');
      when(network.get(any)).thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getDailyQuote();
      // assert
      expect(result, isA<DailyQuoteModel>());
    });
  });
}
