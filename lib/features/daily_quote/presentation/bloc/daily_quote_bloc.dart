import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kuwot/core/domain/no_params.dart';
import 'package:kuwot/core/presentation/bloc/error_state.dart';
import 'package:kuwot/features/daily_quote/domain/entities/daily_quote.dart';
import 'package:kuwot/features/daily_quote/domain/use_cases/get_daily_quote.dart';

part 'daily_quote_events.dart';
part 'daily_quote_states.dart';

class DailyQuoteBloc extends Bloc<DailyQuoteEvent, DailyQuoteState> {
  final GetDailyQuote getDailyQuote;

  DailyQuoteBloc({
    required this.getDailyQuote,
  }) : super(const DailyQuoteInitialState()) {
    on<GetDailyQuoteEvent>(_onGetDailyQuoteEvent);
  }

  Future<void> _onGetDailyQuoteEvent(
    DailyQuoteEvent event,
    Emitter<DailyQuoteState> emit,
  ) async {
    emit(const DailyQuoteLoadingState());
    final result = await getDailyQuote.execute(const NoParams());
    result.fold(
      (failure) => emit(
        DailyQuoteErrorState(
          message: failure.message,
        ),
      ),
      (dailyQuote) => emit(
        DailyQuoteLoadedState(
          dailyQuote: dailyQuote,
        ),
      ),
    );
  }
}
