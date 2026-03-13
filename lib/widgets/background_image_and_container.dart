import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackgroundImageAndContainer extends StatelessWidget {
  const BackgroundImageAndContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,

            child: Image.asset("assets/images/bac.jpeg", fit: .cover),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: .infinity,
              height: 500,
              padding: EdgeInsets.only(top: 30, left: 30, right: 30,),
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
        )
    );

  }
}
