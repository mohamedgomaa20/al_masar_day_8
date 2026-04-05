import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on, color: colors.primary),
            const SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Location", style: TextStyle(color: colors.onSurface)),
                Text("Downtown, Toronto, CA"),
              ],
            ),
          ],
        ),
        const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://randomuser.me/api/portraits/men/1.jpg",
          ),
        ),
      ],
    );
  }
}
