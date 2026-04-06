import 'package:al_masar_day_8/features/home/data/models/property_data_class.dart';
import 'package:al_masar_day_8/features/properties/ui/widgets/properties_item.dart';
import 'package:flutter/material.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Properties")),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: .bold),
              tabs: [
                Tab(text: "Selling Properties"),
                Tab(text: "Rental Properties"),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  SizedBox(
                    height: 280,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemCount: PropertyDataClass.properties.length,
                      itemBuilder: (_, index) {
                        return PropertiesItem(
                          property: PropertyDataClass.properties[index],
                        );
                      },
                    ),
                  ),

                  Center(child: Text("No Data")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
