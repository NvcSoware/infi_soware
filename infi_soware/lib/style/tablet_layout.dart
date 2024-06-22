import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  final Orientation orientation;
  const TabletLayout({required this.orientation});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Tablet Layout'),
    );
  }
}
