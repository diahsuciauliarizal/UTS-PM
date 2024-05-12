import 'package:flutter/material.dart';
import 'package:si_inventory/pages/home.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('Email'),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          const SizedBox(height: 32.0),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                label: Text('Password'),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder()),
            textInputAction: TextInputAction.go,
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                              user: email,
                            )));
              },
              child: Text(
                'Login',
                style: TextStyle(color: theme.colorScheme.onPrimary),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
