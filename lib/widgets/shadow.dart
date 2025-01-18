import 'package:flutter/material.dart';

class ShadowWidget extends StatelessWidget {
  const ShadowWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      elevation: 10,
      child: this.child,
    );
  }
}

