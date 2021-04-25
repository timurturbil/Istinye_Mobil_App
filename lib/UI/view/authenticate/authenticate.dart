
import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/view/authenticate/register.dart';
import 'package:istinye_mobil/UI/view/authenticate/sign_in.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool isregistered = true;
  void toggleView() {
    setState(() => isregistered = !isregistered);
  }
  @override
  Widget build(BuildContext context) {
    if(isregistered) {
      return SignIn(toggleView: toggleView);
    }else {
      return Register(toggleView: toggleView);
    }

  }
}