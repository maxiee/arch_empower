import 'package:flutter/widgets.dart';

class R extends StatelessWidget {
  const R({super.key, required this.children, this.flexes});

  final List<Widget> children;
  final List<int>? flexes;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children.map((e) {
          if (flexes != null) {
            return Expanded(flex: flexes![children.indexOf(e)], child: e);
          }
          return Expanded(child: e);
        }).toList(),
      ),
    );
  }
}

class C extends StatelessWidget {
  const C({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: children);
  }
}
