import 'package:auto_route/auto_route.dart';
import 'package:kuwot/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: QuoteRoute.page,
          initial: true,
        ),
        AutoRoute(page: AppSettingsRoute.page),
      ];
}
