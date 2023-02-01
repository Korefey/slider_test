import 'package:flutter/material.dart';
import 'package:slider_test/presentation/about_screen.dart';
import 'package:slider_test/presentation/home_screen.dart';
import 'package:slider_test/presentation/saved_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) =>
              const AboutScreen(),
        ),
        GoRoute(
          path: 'saved',
          builder: (BuildContext context, GoRouterState state) =>
              const SavedScreen(),
        ),
      ],
    ),
  ],
);
