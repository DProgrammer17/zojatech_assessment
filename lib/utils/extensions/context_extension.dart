import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/utils/assets/string_assets.dart';

extension ScaffoldStateExtension on BuildContext {
  void showToast({
    required String message,
    Color backgroundColor = Colors.green,
    Color textColor = Colors.white,
    String actionLabel = StringAsset.ok,
    Function? onActionPressed,
    Duration duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: textColor),
        ),
        backgroundColor: backgroundColor,
        action: onActionPressed != null
            ? SnackBarAction(
                label: actionLabel,
                onPressed: () => onActionPressed(),
              )
            : null,
      ),
    );
  }
}
