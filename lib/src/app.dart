import 'package:bloc_form_validation/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Log In',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
