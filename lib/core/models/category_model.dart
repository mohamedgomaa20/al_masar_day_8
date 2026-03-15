import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;

  CategoryModel({required this.name, required this.icon});

  static List<CategoryModel> categories = [
    CategoryModel(name: "إلكترونيات", icon: Icons.laptop_chromebook),
    CategoryModel(name: "ملابس", icon: Icons. checkroom),
    CategoryModel(name: "منزل", icon: Icons.home),
    CategoryModel(name: "كتب", icon: Icons.menu_book),
    CategoryModel(name: "ملابس", icon: Icons. checkroom),
    CategoryModel(name: "منزل", icon: Icons.home),
    CategoryModel(name: "كتب", icon: Icons.menu_book),
  ];
}
