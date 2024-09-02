import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kuwot/core/presentation/error_retry_snackbar.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/kuwot_api_remote_data_source.dart';
import 'package:kuwot/features/quote/presentation/bloc/background_images_bloc.dart';
import 'package:kuwot/features/quote/presentation/widgets/about_image_dialog.dart';
import 'package:kuwot/utilities.dart';

class BackgroundPhotoWidget extends StatelessWidget {
  final int backgroundIndex;
  final bool hideImageInfoButton;

  const BackgroundPhotoWidget({
    required this.backgroundIndex,
    this.hideImageInfoButton = false,
    super.key,
  }) : assert(backgroundIndex < imagesPerPage);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BackgroundImagesBloc, BackgroundImagesState>(
      listener: (context, state) {
        // handle error state
        if (state is BackgroundImagesErrorState) {
          ErrorRetrySnackbar.show(
            context,
            errorMessage: state.message,
            onRetry: () {
              context.read<BackgroundImagesBloc>().add(
                    const GetBackgroundImagesEvent(),
                  );
            },
          );
        }
      },
      builder: (context, state) {
        if (state is BackgroundImagesLoadedState) {
          const borderRadius = BorderRadius.only(
            bottomLeft: Radius.circular(16),
          );
          final imageInfoButton = Material(
            color: Colors.black26,
            borderRadius: borderRadius,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                showAdaptiveDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => AboutImageDialog(
                    image: state.backgroundImages[backgroundIndex],
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: borderRadius,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.circleInfo,
                  size: 20,
                  color: Colors.white54,
                ),
              ),
            ),
          );

          return Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: state.backgroundImages[backgroundIndex].url,
                fit: BoxFit.cover,
                placeholder: (_, __) {
                  final avgColor =
                      state.backgroundImages[backgroundIndex].color;
                  return Container(
                    color: getColorFromHexString(avgColor),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Container(color: Colors.grey);
                },
              ),
              hideImageInfoButton
                  ? const SizedBox()
                  : Positioned(
                      top: 0,
                      right: 0,
                      child: imageInfoButton,
                    ),
            ],
          );
        }

        return Container(color: Colors.grey);
      },
    );
  }
}