import 'package:cardvalidator/pages/homePage.dart';
import 'package:cardvalidator/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,  
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,  
          brightness: Brightness.light,  
        ),
        scaffoldBackgroundColor: Colors.green[50], 
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
