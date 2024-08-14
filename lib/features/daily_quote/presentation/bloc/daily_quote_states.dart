part of 'daily_quote_bloc.dart';

abstract class DailyQuoteState extends Equatable {
  const DailyQuoteState();
}

class DailyQuoteInitialState extends DailyQuoteState {
  const DailyQuoteInitialState();

  @override
  List<Object> get props => [];
}

class DailyQuoteLoadingState extends DailyQuoteState {
  const DailyQuoteLoadingState();

  @override
  List<Object> get props => [];
}

class DailyQuoteLoadedState extends DailyQuoteState {
  final DailyQuote dailyQuote;

  const DailyQuoteLoadedState({required this.dailyQuote});

  @override
  List<Object> get props => [dailyQuote];
}

class DailyQuoteErrorState extends DailyQuoteState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const DailyQuoteErrorState({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
