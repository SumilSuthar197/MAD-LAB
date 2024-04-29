import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/signup.dart';
import 'package:flutter_app/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'signup': (context) => MySignup(),
      'home': (context) => HomePage(
            userEmail: '',
            successMessage: '',
          ),
    },
  ));
}
