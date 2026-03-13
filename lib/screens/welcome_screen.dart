import 'package:al_masar_day_8/widgets/custom_elevated_button.dart';
import 'package:al_masar_day_8/features/auth/register_screen.dart';
import 'package:flutter/material.dart';

import '../features/auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                Image.asset("assets/images/welcome.jpeg", fit: .cover),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: .infinity,
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Color(0xff1380A5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
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
                  SizedBox(height: 130),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
