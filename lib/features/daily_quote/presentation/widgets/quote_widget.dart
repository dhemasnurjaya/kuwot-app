import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/daily_quote_bloc.dart';

class QuoteWidget extends StatefulWidget {
  const QuoteWidget({super.key});

  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  String? _quoteBody;
  String? _quoteAuthor;

  @override
  void initState() {
    super.initState();

    // init animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController.addListener(
      () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DailyQuoteBloc, DailyQuoteState>(
      listener: (context, state) {
        if (state is DailyQuoteLoadingState) {
          _animationController.repeat(reverse: true);
        } else {
          _animationController.forward();
        }
      },
      builder: (context, state) {
        if (state is DailyQuoteLoadedState) {
          _quoteBody = state.dailyQuote.body;
          _quoteAuthor = state.dailyQuote.author;
        }

        return Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Opacity(
                opacity: _animationController.value,
                child: SvgPicture.asset(
                  'assets/svgs/chat-quote-fill.svg',
                  height: 54,
                  colorFilter: const ColorFilter.mode(
                    Colors.white54,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                _quoteBody ?? '...',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Text(
                '- ${_quoteAuthor ?? 'Kuwot'}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
