 import 'package:al_masar_day_8/features/home/ui/screens/home_screen.dart';
import 'package:al_masar_day_8/features/welcome/ui/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/themes/app_theme.dart';
import 'core/themes/theme_manager/theme_manager_bloc.dart';
import 'features/auth/logic/auth_bloc/auth_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()),
        BlocProvider(create: (_) => ThemeManagerBloc()),
      ],
      child: const ALMasarApp(),
    ),
  );
}

class ALMasarApp extends StatelessWidget {
  const ALMasarApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
      builder: (context, state) {
        final isDarkMode = state is DarkModeState;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:  .light,
          // themeMode: isDarkMode ? .dark : .light,
          home: WelcomeScreen(),
        );
      },
    );
  }
}
