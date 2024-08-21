import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_background_photos.dart';
import 'package:kuwot/features/quote/presentation/bloc/background_photos_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'background_photos_bloc_test.mocks.dart';

@GenerateMocks([GetBackgroundPhotos])
void main() {
  late MockGetBackgroundPhotos mockGetBackgroundPhotos;
  late BackgroundPhotosBloc backgroundPhotosBloc;

  setUp(() {
    mockGetBackgroundPhotos = MockGetBackgroundPhotos();
    backgroundPhotosBloc = BackgroundPhotosBloc(
      getBackgroundPhotos: mockGetBackgroundPhotos,
    );
  });

  test('initial state is BackgroundPhotosInitial', () {
    // assert
    expect(backgroundPhotosBloc.state, const BackgroundPhotosInitialState());
  });

  group('GetBackgroundPhotos', () {
    test('should get background photos from GetBackgroundPhotos use case',
        () async {
      // arrange
      provideDummy<Either<Failure, BackgroundPhotos>>(
          right(const BackgroundPhotos(photos: [])));
      when(mockGetBackgroundPhotos.execute(any))
          .thenAnswer((_) async => right(const BackgroundPhotos(photos: [])));

      // act
      backgroundPhotosBloc.add(const GetBackgroundPhotosEvent());
      await untilCalled(mockGetBackgroundPhotos.execute(any));

      // assert
      verify(mockGetBackgroundPhotos.execute(any));
      verifyNoMoreInteractions(mockGetBackgroundPhotos);
    });

    test(
        'should emit [BackgroundPhotosLoading, BackgroundPhotosLoaded] when data is gotten successfully',
        () async {
      // arrange
      const tBackgroundPhotos = BackgroundPhotos(photos: []);
      provideDummy<Either<Failure, BackgroundPhotos>>(right(tBackgroundPhotos));
      when(mockGetBackgroundPhotos.execute(any))
          .thenAnswer((_) async => right(tBackgroundPhotos));

      // assert later
      final expected = [
        const BackgroundPhotosLoadingState(),
        const BackgroundPhotosLoadedState(tBackgroundPhotos),
      ];
      expectLater(backgroundPhotosBloc.stream, emitsInOrder(expected));

      // act
      backgroundPhotosBloc.add(const GetBackgroundPhotosEvent());
    });

    test(
        'should emit [BackgroundPhotosLoading, BackgroundPhotosError] when getting data fails',
        () async {
      // arrange
      const tFailure = UnknownFailure(message: 'Unknown Failure');
      provideDummy<Either<Failure, BackgroundPhotos>>(left(tFailure));
      when(mockGetBackgroundPhotos.execute(any))
          .thenAnswer((_) async => left(tFailure));

      // assert later
      final expected = [
        const BackgroundPhotosLoadingState(),
        BackgroundPhotosErrorState(message: tFailure.message),
      ];
      expectLater(backgroundPhotosBloc.stream, emitsInOrder(expected));

      // act
      backgroundPhotosBloc.add(const GetBackgroundPhotosEvent());
    });
  });
}
