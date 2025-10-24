import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_eg_1/screens/home_page.dart';
import 'package:flutter_eg_1/screens/test_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(title: 'Home'),
      routes: <RouteBase>[
        GoRoute(
          path: '/test/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id'];
            return TestScreen(id: id);
          },
        ),
      ],
    ),
  ],
);
