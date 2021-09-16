import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notepad/screens/todoscreen.dart';

class SplashScreen extends StatelessWidget {
  pushToHomePage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    pushToHomePage(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
