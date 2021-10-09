import 'package:flutter/material.dart';

Widget drawerMenu() {
  List<Map<String, dynamic>> menuItems = [
    {
      'title': const Text('Home Page'),
      'icon': const Icon(Icons.home_filled),
    },
    {
      'title': const Text('Test Page'),
      'icon': const Icon(Icons.sailing_rounded),
    },
  ];
  return ListView.builder(
    itemCount: menuItems.length,
    padding: const EdgeInsets.all(12),
    itemBuilder: (context, index) {
      return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            menuItems[index]['icon'],
            const SizedBox(
              width: 12,
            ),
            menuItems[index]['title'],
          ],
        ),
      );
    },
  );
}
