import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kuwot/core/presentation/error_retry_snackbar.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/quote/presentation/bloc/background_photos_bloc.dart';
import 'package:kuwot/utilities.dart';

class BackgroundPhotoWidget extends StatelessWidget {
  final int backgroundIndex;

  const BackgroundPhotoWidget({
    required this.backgroundIndex,
    super.key,
  }) : assert(backgroundIndex < photosPerPage);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BackgroundPhotosBloc, BackgroundPhotosState>(
      listener: (context, state) {
        // handle error state
        if (state is BackgroundPhotosErrorState) {
          ErrorRetrySnackbar.show(
            context,
            errorMessage: state.message,
            onRetry: () {
              context.read<BackgroundPhotosBloc>().add(
                    const GetBackgroundPhotosEvent(),
                  );
            },
          );
        }
      },
      builder: (context, state) {
        if (state is BackgroundPhotosLoadedState) {
          return CachedNetworkImage(
            imageUrl: state.backgroundPhotos.photos[backgroundIndex].url,
            fit: BoxFit.cover,
            placeholder: (_, __) {
              final avgColor =
                  state.backgroundPhotos.photos[backgroundIndex].avgColor;
              return Container(
                color: getColorFromHexString(avgColor),
              );
            },
            errorWidget: (_, __, ___) {
              return Container(color: Colors.grey);
            },
          );
        }

        return Container(color: Colors.grey);
      },
    );
  }
}
