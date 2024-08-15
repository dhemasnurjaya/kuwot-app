import 'package:flutter_test/flutter_test.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/data/models/photo_list_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../_responses/_response.dart';
import 'pexels_api_remote_data_source_test.mocks.dart';

@GenerateMocks([Network])
void main() {
  late MockNetwork network;
  late PexelsApiRemoteDataSource dataSource;

  setUp(() {
    network = MockNetwork();
    dataSource = PexelsApiRemoteDataSourceImpl(network: network);
  });

  group('getCuratedPhotos', () {
    test('should return PhotoListModel when response is successful', () async {
      // arrange
      final tResponse = readResponse('curated_photos');
      when(network.get(any)).thenAnswer((_) async => tResponse);
      // act
      final result = await dataSource.getCuratedPhotos();
      // assert
      expect(result, isA<PhotoListModel>());
    });
  });
}
