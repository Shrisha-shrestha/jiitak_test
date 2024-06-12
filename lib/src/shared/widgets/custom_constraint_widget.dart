import 'package:flutter/material.dart';

class CustomConstraintWidget extends StatelessWidget {
  const CustomConstraintWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: child,
      ),
    );
  }
}
