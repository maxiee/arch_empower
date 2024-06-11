import 'package:arch_empower/arch_empower.dart';
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
        child: C(
          children: [
            R(children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
            if (child != null) const SizedBox(height: 10),
            if (child != null) Flexible(child: child!),
          ],
        ));
  }
}
