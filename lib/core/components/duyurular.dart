import 'package:flutter/material.dart';
import 'package:istinye_mobil/core/components/CustomListViewBuilder.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';

class DuyurularWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final duyuruListesi = [{"title": "6th Workshop on Pulmonary Drug Delivery", "date": "09.07.2019"}, {'title': "2019-2020 Güz Yarıyılı Geçiş", "date": "08.07.2019"}, {'title': "23 Nisan Şenliği", "data": "16 Nisan"}];
    return Container(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            NameOfSections(
              name: "DUYURULAR",
              route: "duyurular",
            ),
            CustomListViewBuilder(list: duyuruListesi,),
          ],
        ),
      ),
    );
  }
}
