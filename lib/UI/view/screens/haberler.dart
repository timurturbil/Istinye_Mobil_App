import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaberlerEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('HaberlerEkrani!'),
          onPressed: () {
            /* Get.back(); */
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
