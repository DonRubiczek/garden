import 'package:flutter/material.dart';
import 'package:garden/l10n/l10n.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        context.l10n.errorPageTitle,
      ),
      content: Text(
        content,
      ),
      actions: [
        TextButton(
          child: const Text('OK'),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
