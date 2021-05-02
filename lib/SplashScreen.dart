import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Dashboard.dart';
import 'package:flutter_app/attachedUIScreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
        /*Timer(
            Duration(seconds: 3), () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) => Dashboard()));
        });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Task 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Dashboard()));
              }),
              ElevatedButton(
                  child: Text("Task 2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => attachedUIScreen()));
              })
            ],
          )
      ),
    );
  }
}

