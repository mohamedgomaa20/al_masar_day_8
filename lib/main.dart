import 'package:al_masar_day_8/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ALMasarApp());
}

class ALMasarApp extends StatelessWidget {
  const ALMasarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
