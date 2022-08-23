import 'package:flutter/material.dart';
import 'dart:async';

import 'package:wms_mobile/shared/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(
          context, '/login');
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Container(
          width: 221,
          height: 221,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/wms.jpeg'))
          ),
        ),
      ),
    );
  }
}