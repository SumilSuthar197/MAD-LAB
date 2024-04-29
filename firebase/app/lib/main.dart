import 'dart:io';

import 'package:flutter/material.dart';
import 'package:app/login.dart';
import 'package:app/signup.dart';
import 'package:app/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isWindows
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "apiKey",
              appId: "appId",
              messagingSenderId: "messagingSenderId",
              projectId: "projectId"))
      : await Firebase.initializeApp();
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
