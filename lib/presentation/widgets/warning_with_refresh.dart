import 'package:flutter/material.dart';
import 'package:movie_info/presentation/widgets/refresh_icon_button.dart';

class WarningWithRefresh extends StatelessWidget {
  final VoidCallback onRefreshPressed;
  final String message;
  final Axis direction;
  final double? iconSize;

  const WarningWithRefresh({
    required this.onRefreshPressed,
    required this.message,
    this.iconSize,
    this.direction = Axis.horizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      direction: direction,
      spacing: 8.0,
      runSpacing: 4.0,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        RefreshIconButton(
          onPressed: onRefreshPressed,
          iconSize: iconSize,
        ),
      ],
    );
  }
}
