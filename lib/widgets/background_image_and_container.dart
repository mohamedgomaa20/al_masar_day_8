import 'package:flutter/material.dart';

class BackgroundImageAndContainer extends StatelessWidget {
  const BackgroundImageAndContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 380,
              width: .infinity,
              child: Image.asset("assets/images/bac.jpeg", fit: .cover),
            ),

            Expanded(
              child: Container(
                width: .infinity,
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: BoxDecoration(
                  color: Color(0xff1380A5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
