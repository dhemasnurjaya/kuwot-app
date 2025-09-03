import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:kuwot/core/env.dart';
import 'package:kuwot/core/presentation/bloc/app_bloc_observer.dart';
import 'package:kuwot/core/presentation/bloc/config/theme_mode_cubit.dart';
import 'package:kuwot/core/presentation/theme/app_theme.dart';
import 'package:kuwot/core/router/app_router.dart';
import 'package:kuwot/features/in_app_purchase/presentation/bloc/purchase_details_cubit.dart';
import 'package:kuwot/utilities.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'injection_container.dart' as ic;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // lock screen orientation to portrait
  await setPortraitMode();

  // dependency injection setup
  ic.setup();
  await ic.getIt.allReady();

  // register bloc observer
  Bloc.observer = AppBlocObserver();

  // sentry setup
  final sentryDsn = EnvImpl().sentryDsn;
  if (!kDebugMode && sentryDsn.isNotEmpty) {
    await SentryFlutter.init((options) {
      options.dsn = sentryDsn;
      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;
    }, appRunner: () => runApp(KuwotApp()));
  } else {
    runApp(KuwotApp());
  }
}

Future<void> setPortraitMode() async {
  if (kIsWeb) return;

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class KuwotApp extends StatelessWidget {
  KuwotApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    Widget purchaseListener({required Widget child}) =>
        BlocListener<PurchaseDetailsCubit, List<PurchaseDetails>>(
          listener: (context, state) {
            if (state.last.status == PurchaseStatus.purchased) {
              showSnackbar('Coffee received, thank you! ☕');
            }

            if (state.last.status == PurchaseStatus.pending) {
              showSnackbar('Coffee is on the way! ☕');
            }

            if (state.last.status == PurchaseStatus.error) {
              showSnackbar('Something went wrong, failed to send coffee 😢');
            }
          },
          child: child,
        );

    return ic.getMultiBlocProvider(
      child: purchaseListener(
        child: BlocBuilder<ThemeModeCubit, ThemeMode>(
          bloc: ic.getIt(),
          builder: (context, state) {
            return MaterialApp.router(
              scaffoldMessengerKey: ic.getIt(),
              debugShowCheckedModeBanner: false,
              title: 'Kuwot',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state,
              routerConfig: _appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}
