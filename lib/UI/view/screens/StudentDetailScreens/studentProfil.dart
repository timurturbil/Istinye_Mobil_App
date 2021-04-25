import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/model/programData.dart';
import 'package:istinye_mobil/core/components/CustomListViewBuilder.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';
import 'package:istinye_mobil/core/services/auth/auth.dart';

class StudentProfilScreen extends StatelessWidget {
  final studentData = ProgramData().studentData;
  final AuthServices _auth = AuthServices();
  final double topWidgetHeight = 160.0;
  final double avatarRadius = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFİL"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            /* label: Text('logout'), */
            onPressed: () async {
              await _auth.signOutt();
              /* Navigator.pushNamed(
                context,
                '/',
              ); */
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: new Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: topWidgetHeight,
                        /* width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4, */
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://gencyazi.com/wp-content/uploads/2017/03/daktilo-kagit-kalem-430.jpg"))),
                        child: TextButton(onPressed: () {}, child: Text("")),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      new Container(
                        child: ListTile(
                          title: Text(studentData['isim']),
                          subtitle: Text(studentData['statu']),
                        ),
                      ),
                      NameOfSections(
                        name: 'PROGRAMLAR',
                      ),
                      CustomListViewBuilder(
                        list: studentData['programlar'],
                        leading: Icon(Icons.paste_rounded),
                        route: "program-bilgileri",
                      ),
                      NameOfSections(
                        name: 'İLETİŞİM',
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(studentData['telefon']),
                        subtitle: Text("Cep"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text(studentData['eposta']),
                        subtitle: Text("E-Posta"),
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text(studentData['konum']),
                        subtitle: Text("Konum"),
                      )
                    ],
                  ),
                ),
                new Positioned(
                  child: new CircleAvatar(
                      radius: avatarRadius,
                      backgroundImage:
                          AssetImage('lib/assets/images/myimage.jpg')),
                  left: (MediaQuery.of(context).size.width / 5) - avatarRadius,
                  top: topWidgetHeight - avatarRadius,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
