import 'package:flutter/material.dart';
import 'package:si_inventory/controller/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Login'),
          backgroundColor: theme.colorScheme.primaryContainer,
          titleTextStyle: TextStyle(
              inherit: true,
              color: theme.colorScheme.onPrimaryContainer,
              fontSize: theme.textTheme.titleLarge!.fontSize),
        ),
        body: const LoginForm());
  }
}
