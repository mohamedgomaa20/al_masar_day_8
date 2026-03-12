import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:al_masar_day_8/widgets/custom_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/welcome.jpeg", fit: .cover),

          Expanded(
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
                  CustomLoginButton(
                    text: "تسجيل الدخول",
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      // );
                    },
                  ),
                  SizedBox(height: 20),
                 ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
