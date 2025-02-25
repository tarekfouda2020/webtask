import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppTransitionPage extends CustomTransitionPage {
  AppTransitionPage({
    required super.child,
    required super.transitionsBuilder,
    required GoRouterState state,
  }) : super(
          key: state.pageKey,
          name: state.name ?? state.path,
          arguments: <String, String>{...state.pathParameters, ...state.uri.queryParameters},
          restorationId: state.pageKey.value,
        );

  factory AppTransitionPage.rtl({
    required Widget child,
    required GoRouterState state,
  }) {
    return AppTransitionPage(
      state: state,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  factory AppTransitionPage.slidLeft({
    required Widget child,
    required GoRouterState state,
  }) {
    return AppTransitionPage(
      state: state,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  factory AppTransitionPage.defaultTransition({
    required Widget child,
    required GoRouterState state,
  }) {
    return AppTransitionPage(
      state: state,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  factory AppTransitionPage.fromDirection({
    required Widget child,
    TextDirection? direction,
    required GoRouterState state,
  }) {
    if (direction == TextDirection.rtl) {
      return AppTransitionPage.rtl(child: child, state: state);
    }
    if (direction == TextDirection.ltr) {
      return AppTransitionPage.slidLeft(child: child, state: state);
    }
    return AppTransitionPage.defaultTransition(child: child, state: state);
  }
}
