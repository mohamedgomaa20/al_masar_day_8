import 'package:al_masar_day_8/core/models/product_model.dart';
import 'package:al_masar_day_8/core/widgets/custom_search_bar.dart';
import 'package:al_masar_day_8/features/home/header_text_widget.dart';
import 'package:al_masar_day_8/features/home/product_card.dart';
import 'package:flutter/material.dart';

import '../../core/models/category_model.dart';
import 'category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 24)),

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomSearchBar(
              hintText: "ابحث عن منتج...",
              prefixIcon: Icons.search,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: HeaderTextWidget(title: "الفئات", onTap: () {}),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 85,
            child: ListView.separated(
              itemCount: CategoryModel.categories.length,
              scrollDirection: .horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              separatorBuilder: (context, index) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return CategoryItem(
                  category: CategoryModel.categories[index],
                  isSelected: index == 0,
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: HeaderTextWidget(title: "منتجات مميزة", onTap: () {}),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          sliver: SliverGrid.builder(
            itemCount: ProductModel.products.length,
            itemBuilder: (context, index) => ProductCard(
              product: ProductModel.products[index],
              isFavorite: index % 2 == 0,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: .6,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }
}
