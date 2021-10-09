import 'package:flutter/material.dart';
import 'package:app_design/helpers/responsive.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

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
    return ResponsiveHelper(
        mobile: ResponsiveGrid(
          columnRatio: 6,
          data: images,
        ),
        tab: ResponsiveGrid(
          columnRatio: 4,
          data: images,
        ),
        desktop: ResponsiveGrid(
          columnRatio: 3,
          data: images,
        ));
  }
}

class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid(
      {Key? key, required this.columnRatio, required this.data})
      : super(key: key);
  final int columnRatio;
  final List data;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 12,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Image.network(data[index]),
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
