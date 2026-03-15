import 'package:al_masar_day_8/features/cart/under_progress_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            color: Color(0xffa7dab1),
            child: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(text: "قيد التنفيذ"),
                Tab(text: "مكتملة"),
                Tab(text: "ملغاة"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                UnderProgressWidget(),
                Center(child: Text("مكتملة")),
                Center(child: Text("ملغاة")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


