import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kuwot/core/app_updater.dart';
import 'package:kuwot/core/auth.dart';
import 'package:kuwot/core/data/local/config.dart';
import 'package:kuwot/core/data/local/theme_mode_config.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/env.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/core/presentation/bloc/config/theme_mode_cubit.dart';
import 'package:kuwot/core/presentation/bloc/config/translation_target_cubit.dart';
import 'package:kuwot/features/in_app_update/presentation/bloc/in_app_update_bloc.dart';
import 'package:kuwot/features/quote/data/data_sources/remote/kuwot_api_remote_data_source.dart';
import 'package:kuwot/features/quote/data/repositories/quote_repository_impl.dart';
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_background_images.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_quote.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_translated_quote.dart';
import 'package:kuwot/features/quote/domain/use_cases/get_translations.dart';
import 'package:kuwot/features/quote/presentation/bloc/background_images_bloc.dart';
import 'package:kuwot/features/quote/presentation/bloc/quote_bloc.dart';
import 'package:kuwot/features/quote/presentation/bloc/translations_bloc.dart';
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

  // env
  getIt.registerLazySingleton<Env>(() => EnvImpl());

  // auth
  getIt.registerLazySingleton<Auth>(() => AuthImpl(env: getIt()));

  // configs
  getIt.registerSingletonWithDependencies<Config<ThemeMode>>(
    () => ThemeModeConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );
  getIt.registerSingletonWithDependencies<Config<TranslationTarget>>(
    () => TranslationTargetConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );

  // data sources
  getIt.registerLazySingleton<KuwotApiRemoteDataSource>(
    () => KuwotApiRemoteApiImpl(
      auth: getIt(),
      network: getIt(),
    ),
  );

  // repositories
  getIt.registerLazySingleton<QuoteRepository>(
    () => QuoteRepositoryImpl(
      quoteDataSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetQuote>(
    () => GetQuote(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetTranslatedQuote>(
    () => GetTranslatedQuote(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetBackgroundImages>(
    () => GetBackgroundImages(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetTranslations>(
    () => GetTranslations(
      getIt(),
    ),
  );

  // blocs
  getIt.registerSingletonAsync<ThemeModeCubit>(
    () async {
      final initialThemeMode = await getIt<Config<ThemeMode>>().get();
      return ThemeModeCubit(
        themeModeConfig: getIt(),
        initialThemeMode: initialThemeMode ?? ThemeMode.system,
      );
    },
    dependsOn: [SharedPreferences, Config<ThemeMode>],
  );
  getIt.registerLazySingleton<InAppUpdateBloc>(
    () => InAppUpdateBloc(appUpdater: getIt()),
  );
  getIt.registerSingletonAsync<TranslationTargetCubit>(
    () async {
      final initialTranslationTarget =
          await getIt<Config<TranslationTarget>>().get();
      return TranslationTargetCubit(
        translationTargetConfig: getIt(),
        initialTranslationTarget:
            initialTranslationTarget ?? defaultTranslationTarget,
      );
    },
    dependsOn: [SharedPreferences, Config<TranslationTarget>],
  );
  getIt.registerFactory<QuoteBloc>(
    () => QuoteBloc(
      getQuote: getIt(),
      getTranslatedQuote: getIt(),
      translationTargetConfig: getIt(),
    ),
  );
  getIt.registerFactory<BackgroundImagesBloc>(
    () => BackgroundImagesBloc(
      getBackgroundImages: getIt(),
    ),
  );
  getIt.registerFactory<TranslationsBloc>(
    () => TranslationsBloc(
      getTranslations: getIt(),
    ),
  );

  // others
  getIt.registerLazySingleton<AppUpdater>(
    () => AppUpdaterImpl(),
  );
}
