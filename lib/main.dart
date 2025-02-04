import 'package:flutter/material.dart';
import 'package:palestra/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palestra',
      theme: ThemeData(
        primarySwatch: Colors.purple, 
        backgroundColor: Colors.blueAccent
      ),
      home: const LoginScreen(),
    );
  }
}
