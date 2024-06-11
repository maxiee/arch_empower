import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    super.key,
    required this.title,
    this.subtitle,
    this.color = Colors.white,
    this.height = 60,
  });

  final String title;
  final String? subtitle;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(6),
      height: 60,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FittedBox(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              title,
            ),
            if (subtitle != null)
              Text(subtitle!,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
          ]),
        ),
      ),
    );
  }
}
