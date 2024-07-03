import 'package:flutter/material.dart';

class RefreshIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? iconSize;
  static const _defaultIconSize = 15.0;

  const RefreshIconButton({
    required this.onPressed,
    this.iconSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: iconSize ?? _defaultIconSize,
      icon: const Icon(Icons.refresh),
    );
  }
}
