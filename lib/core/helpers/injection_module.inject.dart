import 'package:base_structure/core/errors/base_error.dart';
import 'package:base_structure/core/errors/page_not_found_error.dart';
import 'package:base_structure/core/helpers/share_services.dart';
import 'package:base_structure/core/localization/translate.dart';
import 'package:base_structure/core/routes/app_navigator.dart';
import 'package:base_structure/core/routes/app_routes.dart';
import 'package:base_structure/core/widgets/failure_screen.dart';
import 'package:base_structure/env/environment_config_reader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';


@module
abstract class InjectionModule {

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  GoRouter get appRouter => GoRouter(
      routes: appRoutes,
      navigatorKey: AppNavigator.navigationKey,
      debugLogDiagnostics: true,
      errorPageBuilder: (context, state) {
        BaseError error = BaseError.unknown();
        if (state.error?.message.startsWith("no route") == true) {
          error = PageNotFoundError();
        }
        return MaterialPage(
            child: FailureScreen(
          error: error,
          callbackActionTitle: Translate.s.open_in_browser,
          callback: () {
            ShareServices.instance.launchURL(
                url:
                    "https://${Uri.parse(FlutterEnvironmentConfigReader.instance.getBaseUrl())}${state.uri.path}");
          },
        ));
      },
      initialLocation: '/splash');
}
