import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/presentation/bloc/error_state.dart';
import 'package:kuwot/features/daily_quote/domain/entities/background_photos.dart';
import 'package:kuwot/features/daily_quote/domain/use_cases/get_background_photos.dart';

part 'background_photos_events.dart';
part 'background_photos_states.dart';

class BackgroundPhotosBloc
    extends Bloc<BackgroundPhotosEvent, BackgroundPhotosState> {
  final GetBackgroundPhotos getBackgroundPhotos;

  BackgroundPhotosBloc({required this.getBackgroundPhotos})
      : super(const BackgroundPhotosInitialState()) {
    on<GetBackgroundPhotosEvent>(_onGetBackgroundPhotos);
  }

  Future<void> _onGetBackgroundPhotos(
    GetBackgroundPhotosEvent event,
    Emitter<BackgroundPhotosState> emit,
  ) async {
    emit(const BackgroundPhotosLoadingState());

    final result = await getBackgroundPhotos.execute(const NoParams());
    result.fold(
      (failure) => emit(
        BackgroundPhotosErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (photos) => emit(
        BackgroundPhotosLoadedState(photos),
      ),
    );
  }
}
