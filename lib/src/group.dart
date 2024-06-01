import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({super.key, required this.title, this.child});

  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
            if (child != null) SizedBox(height: 10),
            if (child != null) child!,
          ],
        ));
  }
}
