import 'package:flutter/material.dart';
import 'package:istinye_mobil/core/components/Baglantilar.dart';
import 'package:istinye_mobil/core/components/Drawer.dart';
import 'package:istinye_mobil/core/components/Footer.dart';
import 'package:istinye_mobil/core/components/duyurular.dart';
import 'package:istinye_mobil/core/components/etkinlikler.dart';
import 'package:istinye_mobil/core/components/haberler.dart';
import 'package:istinye_mobil/core/components/slayts.dart';
import 'package:get/get.dart';
import 'package:istinye_mobil/core/services/failmethod/failmethod.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text("İSTİNYE ÜNİVERSİTESİ"),
          actions: <Widget>[
            /* IconButton(
                onPressed: () {
                  Method().myFunction();
                },
                icon: Icon(Icons.ac_unit)) */
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SlaytsWidget(),
                DuyurularWidget(),
                EtkinliklerWidget(),
                HaberlerWidget(),
                BaglantilarWidget(),
                FooterWidget(),
              ],
            ),
          ),
        ));
  }
}
