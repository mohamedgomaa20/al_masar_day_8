import 'package:al_masar_day_8/core/widgets/custom_elevated_button.dart';
import 'package:al_masar_day_8/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../auth/services/firebase_auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _names = [];

  @override
  void initState() {
    super.initState();
    _loadNames();
  }

  Future<void> _loadNames() async {
    await Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _names = [
          "Mohamed",
          "Gomaa",
          "Mohamed",
          "Mohamed",
          "Ali",
          "Ahmed",
          "Nagy",
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _names.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Center(
                        child: Text(
                          _names[index],
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
              ),
      ),
    );
  }
}

/*
Column(
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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Logout Successfully"),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
                (route) => false,
              );
            },
          ),
        ],
      )
 */
