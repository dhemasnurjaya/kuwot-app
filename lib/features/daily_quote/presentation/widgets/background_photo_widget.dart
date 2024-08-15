import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/background_photos_bloc.dart';
import 'package:kuwot/utilities.dart';

class BackgroundPhotoWidget extends StatelessWidget {
  final int backgroundIndex;

  const BackgroundPhotoWidget({
    required this.backgroundIndex,
    super.key,
  }) : assert(backgroundIndex < photosPerPage);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundPhotosBloc, BackgroundPhotosState>(
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
          );
        }

        return Container();
      },
    );
  }
}
