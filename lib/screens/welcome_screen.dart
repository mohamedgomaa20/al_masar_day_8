import 'package:al_masar_day_8/widgets/custom_elevated_button.dart';
import 'package:al_masar_day_8/features/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../features/auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          type: .fixed,
          selectedItemColor: Color(0xff1380A5),
          unselectedItemColor: Color(0xff808080),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.calendarDays),
              label: "Calender",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bell),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: "Home",
            ),
          ],
        ),
      ),
    );
  }
}
