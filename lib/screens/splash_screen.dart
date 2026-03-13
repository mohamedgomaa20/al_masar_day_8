import 'package:al_masar_day_8/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/images/top.svg'),
          Image.asset("assets/images/Almasar-logo 1.png"),
          Spacer(),
          Stack(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.asset("assets/images/right.png"),
                  ),
                  SizedBox(
                    height: 300,
                    child: Image.asset("assets/images/left.png"),
                  ),
                ],
              ),

              Image.asset("assets/images/boy.png"),

              Positioned(
                bottom: 70,
                left: 30,
                right: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE33C64),
                    foregroundColor: Colors.white,
                    fixedSize: Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "دعنا نبدء",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 25,
                      fontWeight: .w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
