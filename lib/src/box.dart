import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box(
      {super.key,
      required this.title,
      this.color = Colors.white,
      this.height = 50});

  final String title;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}
