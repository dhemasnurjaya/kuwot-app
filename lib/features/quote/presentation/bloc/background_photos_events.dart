part of 'background_photos_bloc.dart';

abstract class BackgroundPhotosEvent extends Equatable {
  const BackgroundPhotosEvent();
}

class GetBackgroundPhotosEvent extends BackgroundPhotosEvent {
  const GetBackgroundPhotosEvent();

  @override
  List<Object> get props => [];
}
