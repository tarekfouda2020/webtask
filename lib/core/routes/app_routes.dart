import 'package:base_structure/features/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/login/login_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/reset_password/reset_password_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/splash/splash_imports.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:base_structure/features/base/presentation/pages/profile/profile_imports.dart';
import 'package:base_structure/features/general/presentation/pages/terms/terms_imports.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    name: SplashScreen.name,
    path: SplashScreen.path,
    builder: (context, state) => SplashScreen(),
  ),

  GoRoute(
    name: LoginScreen.name,
    path: LoginScreen.path,
    builder: (context, state) => LoginScreen(),
  ),

  GoRoute(
    name: ForgetPasswordScreen.name,
    path: ForgetPasswordScreen.path,
    builder: (context, state) => ForgetPasswordScreen(),
  ),

  GoRoute(
    name: ActiveAccountScreen.name,
    path: ActiveAccountScreen.path,
    builder: (context, state) => ActiveAccountScreen(),
  ),

  GoRoute(
    name: ResetPasswordScreen.name,
    path: ResetPasswordScreen.path,
    builder: (context, state) => ResetPasswordScreen(),
  ),

  GoRoute(
    name: TermsScreen.name,
    path: TermsScreen.path,
    builder: (context, state) => TermsScreen(),
  ),

  GoRoute(
    name: HomeScreen.name,
    path: HomeScreen.path(userId: ":userId"),
    builder: (context, state) => HomeScreen(
      userId: state.pathParameters["userId"]!,
    ),
  ),

  GoRoute(
    name: ProfileScreen.name,
    path: ProfileScreen.path,
    builder: (context, state) => ProfileScreen(),
  ),

  /// You can use this if you need to navigate to a screen with a persistent bottom navigation bar or any widget
  // ShellRoute(
  //   builder: (BuildContext context, GoRouterState state, Widget child) {
  //     return ScaffoldWithNavBar(child: child);
  //   },
  //   routes: <RouteBase>[
  //   ],
  // ),
];
