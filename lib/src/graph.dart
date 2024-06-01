import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
          const SizedBox(height: 10),
          child
        ],
      ),
    );
  }
}
