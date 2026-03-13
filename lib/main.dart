import 'package:al_masar_day_8/features/splash/splash_screen.dart';
import 'package:al_masar_day_8/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ALMasarApp());
}

class ALMasarApp extends StatelessWidget {
  const ALMasarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      supportedLocales: [Locale("ar"), Locale("en")],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      home: SplashScreen(),
    );
  }
}
