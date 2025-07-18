import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppTransitions {
  /// Slide from right
  static CustomTransitionPage slideFromRight(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  /// Slide from left
  static CustomTransitionPage slideFromLeft(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(-1.0, 0.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  /// Slide from bottom
  static CustomTransitionPage slideFromBottom(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  /// Slide from top
  static CustomTransitionPage slideFromTop(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(0.0, -1.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut)).animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  /// Fade transition
  static CustomTransitionPage fade(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
