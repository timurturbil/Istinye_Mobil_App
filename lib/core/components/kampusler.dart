import 'package:flutter/material.dart';

class KampuslerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/large/public/2020-10/isutopkapi.jpg?itok=mjJc3PUH"),
    );
  }
}