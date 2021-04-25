import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:istinye_mobil/UI/view/screens/etkinlikler.dart';
import 'package:istinye_mobil/UI/view/screens/haberler.dart';
import 'package:istinye_mobil/core/services/failmethod/failmethod.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              /* child: Text('Drawer Header'), */
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.istinye.edu.tr/sites/istinye.edu.tr/files/inline-images/Ads%C4%B1z%20tasar%C4%B1m%20%282%29.jpg")))),
          ListTile(
            title: Text('Duyurular'),
            leading: Icon(Icons.notifications_active_outlined),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/duyurular',
              );
            },
          ),
          ListTile(
            title: Text('Haberler'),
            leading: Icon(Icons.ac_unit),
            onTap: () {
              /* Get.to(() => HaberlerEkrani()); */
              Navigator.pushNamed(
                context,
                '/haberler',
              );
            },
          ),
          ListTile(
            title: Text('Kampüsler'),
            leading: Icon(Icons.school),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/kampusler',
              );
            },
          ),
          ListTile(
            title: Text('Etkinlikler'),
            leading: Icon(Icons.event_note_outlined),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/etkinlikler',
              );
            },
          ),
          ListTile(
            title: Text('Aksis'),
            leading: Icon(Icons.account_tree_sharp),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/aksis',
              );
            },
          ),
        ],
      ),
    );
  }
}
