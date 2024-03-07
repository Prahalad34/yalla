import 'dart:async';

import 'package:a/Login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
        (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  Login()
              )

          );
        }

    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
       child: Center(child: Image.asset('assets/yala.png')),
      ),
      
    );
  }
}
