part of 'daily_quote_bloc.dart';

abstract class DailyQuoteEvent extends Equatable {
  const DailyQuoteEvent();
}

class GetDailyQuoteEvent extends DailyQuoteEvent {
  const GetDailyQuoteEvent();

  @override
  List<Object> get props => [];
}
