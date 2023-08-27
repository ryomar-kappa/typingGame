import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testproject/home_screen.dart';
import 'package:testproject/main.dart';
import 'package:testproject/test_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(
          path: 'test',
          builder: (BuildContext context, GoRouterState state) {
            return const TestPage();
          },
        )
      ],
    ),
  ],
);
