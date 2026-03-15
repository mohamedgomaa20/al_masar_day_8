import 'package:al_masar_day_8/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/models/cart_model.dart';

class SummaryCard extends StatefulWidget {
  const SummaryCard({super.key});

  @override
  State<SummaryCard> createState() => _SummaryCardState();
}

class _SummaryCardState extends State<SummaryCard> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: AppColors.primaryColorLight),
        ),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () => setState(() {
                _isExpanded = !_isExpanded;
              }),
              child: Padding(
                padding: .all(15),
                child: Row(
                  children: [
                    Text(
                      "ملخص الطلبات",
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primaryColorLight,
                      ),
                      child: Text(
                        "${CartItemModel.cartItems.length} طلبات",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      _isExpanded ? Icons.expand_less : Icons.expand_more,
                      size: 22,
                      color: AppColors.gray500,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpanded) ...[
              Divider(height: 2, color: AppColors.gray200),
              Padding(
                padding: .all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StatItem(label: "الطلبات", value: "3"),
                    StatItem(label: "المبلغ الكلي", value: "877,500 ج.م"),
                    StatItem(label: "الحالة", value: "قيد التنفيذ"),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  const StatItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12, color: AppColors.gray500)),
      ],
    );
  }
}
