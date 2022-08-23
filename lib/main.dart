import 'package:flutter/material.dart';
import 'package:wms_mobile/ui/pages/login_page.dart';
import 'package:wms_mobile/ui/pages/main_page.dart';
import 'package:wms_mobile/ui/pages/splash_screen_page.dart';

void main() {
    runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => SplashScreen(),
        '/main': (context) => MainPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
