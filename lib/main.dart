import 'package:flutter/material.dart';
import 'package:habito/landing.dart';
import 'package:habito/login.dart';
import './launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hábito',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LauncherPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginPage(),
        '/landing': (BuildContext context) => new LandingPage()
      },
    );
  }
}
