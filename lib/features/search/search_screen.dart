import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomSearchBar(hintText: "حقل البحث", prefixIcon: Icons.search),
          Spacer(),
          Text(
            "ابحث عن المنتجات التي تريدها من خلال حقل البحث في الأعلى، وستظهر لك النتائج هنا.",
            textAlign: .center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
