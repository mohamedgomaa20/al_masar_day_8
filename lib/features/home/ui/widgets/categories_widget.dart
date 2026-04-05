import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["House", "Villa", "Banglow"];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => CategoryItem(text: items[index]),
        separatorBuilder: (_, _) => const SizedBox(width: 10),
        itemCount: items.length,
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String text;

  const CategoryItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: colors.onSurface)),
      ),
    );
  }
}
