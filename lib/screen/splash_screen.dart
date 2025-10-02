import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tastybits/screen/get_start_screen.dart';
import 'package:tastybits/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
        ()=> Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=> GetStartScreen()
          )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
          "assets/child.png",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
