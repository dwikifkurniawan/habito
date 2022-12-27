import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habito/bottom_navi.dart';
import 'dart:async';
import './landing.dart';
import './login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    final prefs = await SharedPreferences.getInstance();
    bool slogin;
    slogin = prefs.getBool('slogin') ?? false;

    var duration = const Duration(seconds: 5);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return slogin ? new LandingPage() : new LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffFB9C44),
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffFB9C44), Color(0xffFB9C44)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Image.asset(
                "assets/logo.png",
                height: 250.0,
                width: 500.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
