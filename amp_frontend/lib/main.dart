import 'package:amp_frontend/create_booking.dart';
import 'package:amp_frontend/signup_screen.dart';
import 'package:flutter/material.dart';

import 'show_booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agelgay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SignupScreen(),
    );
  }
}
