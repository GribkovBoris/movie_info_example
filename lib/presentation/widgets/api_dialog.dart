import 'package:flutter/material.dart';

void showApiKeyDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ошибка API ключа'),
          content: const Text('API ключ TMDB не задан. Необходимо установить TMDB_API_KEY при сборки.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
}