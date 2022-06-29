// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:zoom_clone/controllers/auth_controller.dart';
import 'package:zoom_clone/views/screens/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          'Start or join a meeting',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Image.asset('assets/images/onboarding.jpg'),
        ),
        CustomButton(
          text: 'Login',
          onPressed: () {
            _authController.signInWithGoogle();
          },
        )
      ],
    ));
  }
}
