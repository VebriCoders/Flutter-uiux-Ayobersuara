import 'package:flutter/material.dart';
import 'modules/login_page.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      // backgroundColor: Color(0xff329cef),
      body: Center(
        child: Image.asset(
          "images/logo.png",
          width: 500.0,
          height: 200.0,
        ),
      ),
    );
  }
}

// class SplashScreenPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//       backgroundColor: Color(0xff329cef),
//       seconds: 3, //mengatur waktu
//       navigateAfterSeconds: LoginPage(),
//       title: new Text('Ayo Bersuara\nE-Voting'),
//       image: Image.asset('images/logo.png'),
//       photoSize: 150.0,
//     );
//   }
// }
