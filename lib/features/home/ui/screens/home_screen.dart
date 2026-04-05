import 'package:flutter/material.dart';
import '../widgets/categories_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/properties_list_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/section_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              HeaderWidget(),
              SizedBox(height: 20),
              SearchBarWidget(),
              SizedBox(height: 20),
              CategoriesWidget(),
              SizedBox(height: 20),
              SectionTitleWidget(title: "Featured Properties"),
              SizedBox(height: 10),
              PropertiesListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> _names = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadNames();
//   }
//
//   Future<void> _loadNames() async {
//     await Future.delayed(Duration(seconds: 4), () {
//       setState(() {
//         _names = [
//           "Mohamed",
//           "Gomaa",
//           "Mohamed",
//           "Mohamed",
//           "Ali",
//           "Ahmed",
//           "Nagy",
//         ];
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: _names.isEmpty
//             ? Center(child: CircularProgressIndicator())
//             : ListView.separated(
//                 itemCount: _names.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       title: Center(
//                         child: Text(
//                           _names[index],
//                           style: TextStyle(fontSize: 22),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (context, index) => SizedBox(height: 10),
//               ),
//       ),
//     );
//   }
// }
//
// /*
// Column(
//         children: [
//           Center(
//             child: Text(
//               "Home Screen",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: .bold,
//                 fontFamily: "Cairo",
//               ),
//             ),
//           ),
//           SizedBox(height: 40),
//
//           CustomElevatedButton(
//             text: "Logout",
//             onTap: () async {
//               await FirebaseAuthServices.logout();
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text("Logout Successfully"),
//                   backgroundColor: Colors.green,
//                 ),
//               );
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => SplashScreen()),
//                 (route) => false,
//               );
//             },
//           ),
//         ],
//       )
//  */
