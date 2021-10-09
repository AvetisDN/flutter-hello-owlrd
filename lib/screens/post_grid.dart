import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PostGrid extends StatelessWidget {
  PostGrid({Key? key}) : super(key: key);

  final List<String> images = [
    'https://images.unsplash.com/photo-1628958679198-d97eee188e6a?fit=crop&w=500&h=350&q=80',
    'https://images.unsplash.com/photo-1518992028580-6d57bd80f2dd?fit=crop&w=500&h=600&q=80',
    'https://images.unsplash.com/photo-1497206365907-f5e630693df0?fit=crop&w=500&h=500&q=80',
    'https://images.unsplash.com/photo-1572402230267-f3e267c1e5a2?fit=crop&w=500&h=300&q=80',
    'https://images.unsplash.com/photo-1553736277-055142d018f0?fit=crop&w=500&h=500&q=80',
    'https://images.unsplash.com/photo-1552728089-57bdde30beb3?fit=crop&w=500&h=700&q=80',
    'https://images.unsplash.com/photo-1522926193341-e9ffd686c60f?fit=crop&w=500&h=400&q=80',
    'https://images.unsplash.com/photo-1480044965905-02098d419e96?fit=crop&w=500&h=500&q=80',
    'https://images.unsplash.com/photo-1551085254-e96b210db58a?fit=crop&w=500&h=500&q=80',
    'https://images.unsplash.com/photo-1555169062-013468b47731?fit=crop&w=500&h=800&q=80',
    'https://images.unsplash.com/photo-1444464666168-49d633b86797?fit=crop&w=500&h=420&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    int columnRatio = 12;
    if (queryData.size.width >= 380) {
      columnRatio = 6;
    }
    if (queryData.size.width >= 600) {
      columnRatio = 4;
    }
    if (queryData.size.width >= 1024) {
      columnRatio = 3;
    }
    if (queryData.size.width >= 1440) {
      columnRatio = 2;
    }
    return StaggeredGridView.countBuilder(
      crossAxisCount: 12,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(images[index]),
                const SizedBox(height: 8),
                const Text("Post title")
              ],
            ),
          ),
        );
      },
      staggeredTileBuilder: (index) => StaggeredTile.fit(columnRatio),
    );
  }
}
