import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:al_masar_day_8/core/models/cart_model.dart';
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

          Card(
            child: ExpansionTile(
              title: ListTile(
                contentPadding: .zero,
                title: Text("اضغط لعرض التفاصيل"),
              ),
              children: [
                ListTile(title: Text("مجموع الطلبات: 3"), onTap: () {}),
                ListTile(title: Text("مجموع الطلبات: 3"), onTap: () {}),
              ],
            ),
          ),   SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "الطلبات الحالية",
                  style: TextStyle(fontSize: 14, color: AppColors.gray500),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffa7dab1).withValues(alpha: 0.5),
                  ),
                  child: Text(
                    "${CartItemModel.cartItems.length} طلبات",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),     SizedBox(height: 10),
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
