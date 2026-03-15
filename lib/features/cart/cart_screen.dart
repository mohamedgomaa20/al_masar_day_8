import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:al_masar_day_8/core/models/cart_model.dart';
import 'package:al_masar_day_8/features/cart/summary_card.dart';
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
            color: AppColors.primaryColor,
            child: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: .bold),
              tabs: [
                Tab(text: "قيد التنفيذ"),
                Tab(text: "مكتملة"),
                Tab(text: "ملغاة"),
              ],
            ),
          ),
          SummaryCard(),

          Expanded(
            child: TabBarView(
              children: [
                UnderProgressWidget(),
                Center(child: Text("لا توجد طلبات مكتملة")),
                Center(child: Text("لا توجد طلبات ملغاة")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
