import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:base_structure/core/bloc/device_cubit/device_cubit.dart';
import 'package:base_structure/core/helpers/device_type/device_type_service.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/theme/themes/app_dark_theme.dart';
import 'package:base_structure/core/theme/themes/app_light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'core/helpers/general_providers.dart';
import 'generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
            light: AppLightTheme().theme,
            dark: AppDarkTheme().theme,
            initial: state.model.themeMode,
            builder: (theme, darkTheme) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  print("======================> Device Width: ${constraints.maxWidth}, Height: ${constraints.maxHeight}");
                  DeviceTypeService.instance.setDeviceInfo(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                  );
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    title: "Web Task",
                    darkTheme: darkTheme,
                    theme: theme,
                    supportedLocales: S.delegate.supportedLocales,
                    locale: state.model.locale,
                    // These delegates make sure that the localization data for the proper language is loaded
                    localizationsDelegates: const [
                      // 1
                      S.delegate,
                      // 2
                      DefaultCupertinoLocalizations.delegate,
                      // Built-in localization of basic text for Material widgets
                      GlobalMaterialLocalizations.delegate,
                      // Built-in localization for text direction LTR/RTL
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    routerConfig: getIt.get<GoRouter>(),
                    builder: EasyLoading.init(builder: (ctx, child) {
                      ScreenUtil.init(ctx);
                      return child!;
                    }),
                  );
                }
              );
            },
          );
        },
      ),
    );
  }
}
