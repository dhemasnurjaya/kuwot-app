import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot/features/quote/data/models/image_model.dart';

part 'background_image.freezed.dart';

@freezed
class BackgroundImage with _$BackgroundImage {
  const factory BackgroundImage({
    required String id,
    required String description,
    required String color,
    required String blurHash,
    required String url,
    required String originUrl,
    required String authorName,
    required String authorProfileImageUrl,
    required String authorUrl,
  }) = _BackgroundImage;

  static List<BackgroundImage> fromModels(List<ImageModel> images) {
    return images
        .map((e) => BackgroundImage(
              id: e.id,
              description: e.description ?? 'No description',
              color: e.color,
              blurHash: e.blurHash,
              url: e.url,
              originUrl: e.originUrl,
              authorName: e.authorName,
              authorProfileImageUrl: e.authorProfileImageUrl,
              authorUrl: e.authorUrl,
            ))
        .toList();
  }
}
