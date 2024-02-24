import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_001/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Home',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
