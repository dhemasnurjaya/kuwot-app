import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuwot/core/router/app_router.gr.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/background_photos_bloc.dart';
import 'package:kuwot/features/daily_quote/presentation/widgets/background_photo_widget.dart';
import 'package:kuwot/features/daily_quote/presentation/widgets/quote_widget.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/daily_quote_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class DailyQuotePage extends StatefulWidget {
  const DailyQuotePage({super.key});

  @override
  State<DailyQuotePage> createState() => _DailyQuotePageState();
}

class _DailyQuotePageState extends State<DailyQuotePage> {
  final _screenshotController = ScreenshotController();
  int _backgroundIndex = 0;

  @override
  void initState() {
    super.initState();

    // get daily quote
    context.read<DailyQuoteBloc>().add(const GetDailyQuoteEvent());

    // get background photos
    context.read<BackgroundPhotosBloc>().add(const GetBackgroundPhotosEvent());
  }

  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Kuwot',
                style: GoogleFonts.sriracha(
                  fontSize: 30,
                ),
              ),
              const SizedBox(width: 2),
              SvgPicture.asset(
                'assets/svgs/chat-quote.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onSurface,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  context.router.push(const AppSettingsRoute());
                },
                icon: const FaIcon(FontAwesomeIcons.sliders),
              ),
            ],
          ),
        ],
      ),
    );

    final footer = Padding(
      padding: const EdgeInsets.all(8),
      child: Linkify(
        text: 'Powered by https://favqs.com & https://pexels.com',
        style: Theme.of(context).textTheme.bodySmall,
        linkStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Theme.of(context).colorScheme.onSurface,
            ),
        onOpen: (link) async {
          if (!await launchUrl(Uri.parse(link.url))) {
            throw Exception('Could not launch ${link.url}');
          }
        },
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: header,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 70, 24, 42),
              child: _buildQuote(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: footer,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuote() {
    final screenshotEnabledQuote = Screenshot(
      controller: _screenshotController,
      child: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundPhotoWidget(backgroundIndex: _backgroundIndex),
          const Align(alignment: Alignment.center, child: QuoteWidget()),
        ],
      ),
    );

    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(0),
      elevation: 12,
      child: Column(
        children: [
          Expanded(
            child: screenshotEnabledQuote,
          ),
          Row(
            children: [
              Expanded(
                child: _buildQuoteActionButton(
                  onPressed: () {
                    context
                        .read<DailyQuoteBloc>()
                        .add(const GetDailyQuoteEvent());
                  },
                  icon: const FaIcon(FontAwesomeIcons.quoteRight),
                ),
              ),
              Expanded(
                child: _buildQuoteActionButton(
                  onPressed: _cycleBackground,
                  icon: const FaIcon(FontAwesomeIcons.image),
                ),
              ),
              Expanded(
                child: _buildQuoteActionButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.download),
                ),
              ),
              Expanded(
                child: _buildQuoteActionButton(
                  onPressed: _shareQuote,
                  icon: const FaIcon(FontAwesomeIcons.shareNodes),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildQuoteActionButton({
    required VoidCallback onPressed,
    required Widget icon,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: icon,
      ),
    );
  }

  void _cycleBackground() {
    setState(() {
      _backgroundIndex = ++_backgroundIndex % photosPerPage;
    });
  }

  Future<void> _shareQuote() async {
    final image = await _screenshotController.capture();
    if (image == null) return;
    await Share.shareXFiles(
      [
        XFile.fromData(
          image,
          mimeType: 'image/png',
          name: 'kuwot_${DateTime.now().millisecondsSinceEpoch}.png',
        ),
      ],
    );
  }
}
