import 'package:al_masar_day_8/features/auth/widgets/app_scaffold.dart';
import 'package:al_masar_day_8/core/widgets/custom_elevated_button.dart';
import 'package:al_masar_day_8/features/auth/register_screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/welcome.jpeg"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30, bottom: 80),
              decoration: BoxDecoration(
                color: Color(0xff1380A5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Column(
                mainAxisSize: .min,
                children: [
                  Text(
                    "أهلا بك في مؤسسة المسار",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 25,
                      fontWeight: .w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "للفئات الخاصة",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 25,
                      fontWeight: .w600,
                      color: Colors.white70,
                    ),
                  ),

                  SizedBox(height: 25),
                  CustomElevatedButton(
                    text: "تسجيل الدخول",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    text: "إنشاء حساب",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
