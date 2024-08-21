part of 'background_photos_bloc.dart';

abstract class BackgroundPhotosState extends Equatable {
  const BackgroundPhotosState();
}

class BackgroundPhotosInitialState extends BackgroundPhotosState {
  const BackgroundPhotosInitialState();

  @override
  List<Object> get props => [];
}

class BackgroundPhotosLoadingState extends BackgroundPhotosState {
  const BackgroundPhotosLoadingState();

  @override
  List<Object> get props => [];
}

class BackgroundPhotosLoadedState extends BackgroundPhotosState {
  final BackgroundPhotos backgroundPhotos;

  const BackgroundPhotosLoadedState(this.backgroundPhotos);

  @override
  List<Object> get props => [backgroundPhotos];
}

class BackgroundPhotosErrorState extends BackgroundPhotosState
    implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const BackgroundPhotosErrorState({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
