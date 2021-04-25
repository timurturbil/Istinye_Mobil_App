import 'package:flutter/material.dart';

class KampuslerEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: TextButton(
          child: Text('KampuslerEkrani!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}