import 'package:al_masar_day_8/features/home/ui/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/themes/app_theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ALMasarApp());
}

class ALMasarApp extends StatefulWidget {
  const ALMasarApp({super.key});

  @override
  State<ALMasarApp> createState() => _ALMasarAppState();
}

class _ALMasarAppState extends State<ALMasarApp> {
  bool isDark = false;

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDark ? .dark : .light,
      home: HomeScreen(toggleTheme: toggleTheme, isDark: isDark),
    );
  }
}
