import 'package:author_registration_app/Home_Page.dart';
import 'package:author_registration_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
      '/': (context) => HomePage(),
      'splash': (context) => SplashScreen(),
    },),
  );
}
