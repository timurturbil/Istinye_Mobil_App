import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/model/user.dart';
import 'package:istinye_mobil/UI/view/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

import 'screens/StudentDetailScreens/studentProfil.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return StudentProfilScreen();
    }
  }
}
