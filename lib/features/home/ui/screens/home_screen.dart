import 'package:al_masar_day_8/core/widgets/custom_elevated_button.dart';
import 'package:al_masar_day_8/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../auth/services/firebase_auth_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Column(
        children: [
          Center(
            child: Text(
              "Home Screen",
              style: TextStyle(
                fontSize: 30,
                fontWeight: .bold,
                fontFamily: "Cairo",
              ),
            ),
          ),
          SizedBox(height: 40),

          CustomElevatedButton(
            text: "Logout",
            onTap: () async {
              await FirebaseAuthServices.logout();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
