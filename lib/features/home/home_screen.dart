import 'package:al_masar_day_8/core/widgets/custom_search_bar.dart';
import 'package:al_masar_day_8/features/home/header_text_widget.dart';
import 'package:flutter/material.dart';

import '../../core/models/category_model.dart';
import 'category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CustomSearchBar(
            hintText: "ابحث عن منتج...",
            prefixIcon: Icons.search,
          ),

          SizedBox(height: 30),
          HeaderTextWidget(title: "الفئات", onTap: () {}),

          SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.separated(
              itemCount: CategoryModel.categories.length,
              scrollDirection: .horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                return CategoryItem(
                  category: CategoryModel.categories[index],
                  isSelected: index == 0,
                );
              },
            ),
          ),
          HeaderTextWidget(title: "منتجات مميزة", onTap: () {}),

          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/laptop_2.webp"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
