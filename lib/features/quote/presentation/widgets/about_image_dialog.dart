import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuwot/features/quote/domain/entities/background_image.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutImageDialog extends StatelessWidget {
  final BackgroundImage image;

  const AboutImageDialog({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 8, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'About Image',
            style: GoogleFonts.sriracha(fontSize: 24),
          ),
          IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: const FaIcon(FontAwesomeIcons.xmark),
          ),
        ],
      ),
    );

    final info = Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            image.authorName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            image.description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );

    final footer = Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              launchUrlString(image.authorUrl);
            },
            child: const Text('Author profile'),
          ),
          TextButton(
            onPressed: () {
              launchUrlString(image.originUrl);
            },
            child: const Text('Original image'),
          ),
        ],
      ),
    );

    return Dialog(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          header,
          const Divider(height: 1),
          info,
          footer,
        ],
      ),
    );
  }
}
