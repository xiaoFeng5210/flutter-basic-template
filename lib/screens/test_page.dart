import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class TestScreen extends StatelessWidget {
  final String? id;
  const TestScreen({
    super.key,
    this.id
    });

  @override
  Widget build(BuildContext context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    print('id: $id');
    return Scaffold(
      appBar: AppBar(title: const Text('Test Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go back to the Home screen'),
        ),
      ),
    );
  }
}


