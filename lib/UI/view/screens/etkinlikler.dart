import 'package:flutter/material.dart';

class EtkinliklerEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("Etkinlikler ekranı"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
