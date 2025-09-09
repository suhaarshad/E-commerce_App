import 'package:ecom/screens/forgotpass_screen.dart';
import 'package:ecom/screens/login_screen.dart';
import 'package:ecom/screens/navigation_screen.dart';
import 'package:ecom/screens/onboarding_screen.dart';
import 'package:ecom/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ecommerce',
      theme: ThemeData(
        primaryColor: Colors.brown[400],
      ),
      home: NavigationScreen(),
    );
  }
}
