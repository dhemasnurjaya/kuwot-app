import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kuwot/core/error/failure.dart';
import 'package:kuwot/core/error/unknown_failure.dart';
import 'package:kuwot/features/quote/domain/entities/background_image.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_background_images.dart';
import 'package:kuwot/features/quote/presentation/bloc/background_images_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'background_photos_bloc_test.mocks.dart';

@GenerateMocks([GetBackgroundImages])
void main() {
  late MockGetBackgroundImages mockGetBackgroundImages;
  late BackgroundImagesBloc backgroundImagesBloc;

  setUp(() {
    mockGetBackgroundImages = MockGetBackgroundImages();
    backgroundImagesBloc = BackgroundImagesBloc(
      getBackgroundImages: mockGetBackgroundImages,
    );
  });

  test('initial state is BackgroundImagesInitial', () {
    // assert
    expect(backgroundImagesBloc.state, const BackgroundImagesInitialState());
  });

  group('GetBackgroundImages', () {
    test('should get background photos from GetBackgroundImages use case',
        () async {
      // arrange
      provideDummy<Either<Failure, List<BackgroundImage>>>(
          right(const <BackgroundImage>[]));
      when(mockGetBackgroundImages.execute(any))
          .thenAnswer((_) async => right(const <BackgroundImage>[]));

      // act
      backgroundImagesBloc.add(const GetBackgroundImagesEvent());
      await untilCalled(mockGetBackgroundImages.execute(any));

      // assert
      verify(mockGetBackgroundImages.execute(any));
      verifyNoMoreInteractions(mockGetBackgroundImages);
    });

    test(
        'should emit [BackgroundImagesLoading, BackgroundImagesLoaded] when data is gotten successfully',
        () async {
      // arrange
      const tBackgroundImages = <BackgroundImage>[];
      provideDummy<Either<Failure, List<BackgroundImage>>>(
          right(tBackgroundImages));
      when(mockGetBackgroundImages.execute(any))
          .thenAnswer((_) async => right(tBackgroundImages));

      // assert later
      final expected = [
        const BackgroundImagesLoadingState(),
        const BackgroundImagesLoadedState(tBackgroundImages),
      ];
      expectLater(backgroundImagesBloc.stream, emitsInOrder(expected));

      // act
      backgroundImagesBloc.add(const GetBackgroundImagesEvent());
    });

    test(
        'should emit [BackgroundImagesLoading, BackgroundImagesError] when getting data fails',
        () async {
      // arrange
      const tFailure = UnknownFailure(message: 'Unknown Failure');
      provideDummy<Either<Failure, List<BackgroundImage>>>(left(tFailure));
      when(mockGetBackgroundImages.execute(any))
          .thenAnswer((_) async => left(tFailure));

      // assert later
      final expected = [
        const BackgroundImagesLoadingState(),
        BackgroundImagesErrorState(message: tFailure.message),
      ];
      expectLater(backgroundImagesBloc.stream, emitsInOrder(expected));

      // act
      backgroundImagesBloc.add(const GetBackgroundImagesEvent());
    });
  });
}
