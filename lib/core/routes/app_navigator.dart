import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey();

  static AppNavigator get instance => const AppNavigator._();

  static BuildContext? get context => GetIt.I<GoRouter>().configuration.navigatorKey.currentContext;

  const AppNavigator._();

  static String? topRoutePath(BuildContext context) {
    return GoRouter.of(context).routerDelegate.currentConfiguration.last.matchedLocation;
  }

  static String? topGenericRoutePath(BuildContext context) {
    return GoRouter.of(context).routerDelegate.currentConfiguration.last.route.path;
  }

  /// Get the current route path (parameterized)
  /// i.e /details/5 where 5 is the id
  static String? currentRoutePath(BuildContext context) {
    try {
      return GoRouterState.of(context).uri.path;
    } catch (e) {
      return context.read<GoRouterState>().uri.path;
    }
  }

  /// Get the current route path (NOT parameterized)
  /// i.e /details/:id
  static String? genericCurrentRoutePath(BuildContext context) {
    try {
      return GoRouterState.of(context).fullPath;
    } catch (e) {
      debugPrint('Go Error: $e');
      return context.read<GoRouterState>().fullPath;
    }
  }

  void popUntilPath(BuildContext context, String routePath) {
    final router = GoRouter.of(context);
    while (router.routerDelegate.currentConfiguration.matches.last.matchedLocation != routePath) {
      if (!context.canPop()) {
        return;
      }
      context.pop();
    }
  }

  Future<T?> push<T>(
    BuildContext context, {
    required String path,
    // required Map<String, dynamic>? extra,
  }) async {
    return await GoRouter.of(context).push<T>(path);
  }

  Future<T?> pushReplacement<T>(
    BuildContext context, {
    required String path,
    // required Map<String, dynamic>? extra,
  }) async {
    return await GoRouter.of(context).pushReplacement(path);
  }

  /// TODO ABD NAV CHECK
  void popUntil(BuildContext context, {required RoutePredicate predicate}) {
    Navigator.of(context).popUntil((route) {
      return predicate.call(route) || route.isFirst;
    });
  }

  void popToLast(BuildContext context) {
    /// Top route is GoRouter route
    while (GoRouter.of(context).canPop()) {
      GoRouter.of(context).pop();
    }
  }

  void popAllAndPushNamed(BuildContext context, {required String routeName}) {
    // GetIt.I<GoRouter>().go(path);
    popToLast(context);
    GoRouter.of(context).replaceNamed(routeName);
  }

  Future<void> popManySteps(int numberOfSteps, BuildContext context) async {
    for (var i = 0; i < numberOfSteps; i++) {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }
  }

}
