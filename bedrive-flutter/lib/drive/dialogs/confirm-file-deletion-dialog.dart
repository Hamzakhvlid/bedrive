import 'package:flutter/material.dart';
import 'package:bedrive/utils/text.dart';

Future<bool?> showConfirmationDialog(
  BuildContext context,
  {
    required String title,
    required String subtitle,
    String cancelText = 'Cancel',
    String confirmText = 'Confirm',
  }
) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: text(title),
        content: text(subtitle, singleLine: false),
        actions: [
          ElevatedButton(
            child: text(cancelText),
            onPressed: () {
              Navigator.of(context).pop(null);
            },
          ),
          ElevatedButton(
            child: text(confirmText),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    },
  );
}