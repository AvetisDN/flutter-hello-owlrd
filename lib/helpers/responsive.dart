import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  const ResponsiveHelper({
    Key? key,
    required this.mobile,
    required this.tab,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobile;
      } else if (constraints.maxWidth < 1024) {
        return tab;
      } else {
        return desktop;
      }
    });
  }
}
