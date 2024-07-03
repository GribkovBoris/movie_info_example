import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  final double size;

  const CircularIndicator({
    this.size = 15,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: const CircularProgressIndicator(),
    );
  }
}
