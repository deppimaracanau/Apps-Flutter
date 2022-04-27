import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Page',
      theme: const ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: createContent(),

    );
  }

  createContent() {
    return Text('login')
  }


}
