import 'package:kuwot/core/data/local/config.dart';
import 'package:kuwot/core/data/local/theme_mode_config.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/core/presentation/theme/theme_mode_cubit.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/favqs_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/data/data_sources/remote/pexels_api_remote_data_source.dart';
import 'package:kuwot/features/daily_quote/data/repositories/daily_quote_repository_impl.dart';
import 'package:kuwot/features/daily_quote/domain/repositories/daily_quote_repository.dart';
import 'package:kuwot/features/daily_quote/domain/use_cases/get_background_photos.dart';
import 'package:kuwot/features/daily_quote/domain/use_cases/get_daily_quote.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/background_photos_bloc.dart';
import 'package:kuwot/features/daily_quote/presentation/bloc/daily_quote_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setup() {
  // network
  getIt.registerLazySingleton<Network>(() => NetworkImpl());

  // shared preferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () async {
      final prefs = await SharedPreferences.getInstance();
      return prefs;
    },
  );

  // configs
  getIt.registerSingletonWithDependencies<Config<ThemeMode>>(
    () => ThemeModeConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );

  // data sources
  getIt.registerLazySingleton<FavqsApiRemoteDataSource>(
    () => FavqsApiRemoteApiImpl(
      network: getIt(),
    ),
  );
  getIt.registerLazySingleton<PexelsApiRemoteDataSource>(
    () => PexelsApiRemoteDataSourceImpl(
      network: getIt(),
    ),
  );

  // repositories
  getIt.registerLazySingleton<DailyQuoteRepository>(
    () => DailyQuoteRepositoryImpl(
      favqsDataSource: getIt(),
      pexelsDataSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetDailyQuote>(
    () => GetDailyQuote(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetBackgroundPhotos>(
    () => GetBackgroundPhotos(
      getIt(),
    ),
  );

  // blocs
  getIt.registerSingletonAsync<ThemeModeCubit>(
    () async {
      final initialThemeMode = await getIt<Config<ThemeMode>>().get();
      return ThemeModeCubit(
        themeModeConfig: getIt(),
        initialThemeMode: initialThemeMode,
      );
    },
    dependsOn: [SharedPreferences, Config<ThemeMode>],
  );
  getIt.registerFactory<DailyQuoteBloc>(
    () => DailyQuoteBloc(
      getDailyQuote: getIt(),
    ),
  );
  getIt.registerFactory<BackgroundPhotosBloc>(
    () => BackgroundPhotosBloc(
      getBackgroundPhotos: getIt(),
    ),
  );

  // others
}
