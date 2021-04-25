import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/examsDetails.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';

class SinavSonuclari extends StatelessWidget {
  final List icerik;

  const SinavSonuclari({Key key, this.icerik}) : super(key: key);
  /* final List myList = [
    {
      "programAdi": "Sağlık Yönetimi, Lisans",
      "programFakülte": "Sağlık Bilimleri Fakültesi",
      'yıl': "2020-2021",
      'dönem': "Güz",
      "dersler": [
        {
          'dersIsmi': "Bilgisayar",
          'sınavlar': [
            {
              'SınavIsmi': "AraSınav",
              'examType': 'sy_vize',
              "not": "40",
              "harfNotu": "BB"
            },
            {
              'SınavIsmi': "BitirmeSınavi",
              'examType': 'sy_final',
              "not": "60",
              "harfNotu": "CC"
            }
          ]
        },
        {
          'dersIsmi': "İLK YARDIM",
          'sınavlar': [
            {
              'SınavIsmi': "AraSınav",
              'examType': 'sy_vize',
              "not": "70",
              "harfNotu": "AB"
            },
            {
              'SınavIsmi': "BitirmeSınavi",
              'examType': 'sy_final',
              "not": "50",
              "harfNotu": "OC"
            }
          ]
        },
      ]
    },
    {
      "programAdi": "Sağlık Yönetimi, Lisans",
      "programFakülte": "Sağlık Bilimleri Fakültesi",
      'yıl': "2020-2021",
      'dönem': "Bahar",
      "dersler": [
        {
          'dersIsmi': "MAKRO EKONOMİ",
          'sınavlar': [
            {
              'SınavIsmi': "AraSınav",
              'examType': 'sy_vize',
              "not": "77",
              "harfNotu": "AA"
            },
            {
              'SınavIsmi': "BitirmeSınavi",
              'examType': 'sy_final',
              "not": "99",
              "harfNotu": "KK"
            }
          ]
        },
        {
          'dersIsmi': "TÜRK DİLİ",
          'sınavlar': [
            {
              'SınavIsmi': "AraSınav",
              'examType': 'sy_vize',
              "not": "54",
              "harfNotu": "BA"
            },
            {
              'SınavIsmi': "BitirmeSınavi",
              'examType': 'sy_final',
              "not": "60",
              "harfNotu": "CA"
            }
          ]
        },
      ]
    }
  ]; */

  @override
  Widget build(BuildContext context) {
    final SinavSonuclari args =
        ModalRoute.of(context).settings.arguments as SinavSonuclari;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.icerik[0]['programAdi']),
      ),
      body: ListView.builder(
          itemCount: args.icerik.length,
          itemBuilder: (ctx, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  NameOfSections(
                    name:
                        "${args.icerik[index]['yıl']} - ${args.icerik[index]['dönem']}",
                  ),
                  SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: args.icerik[index]['dersler'].length,
                            itemBuilder: (context, index2) {
                              var value = args.icerik[index]['dersler'][index2]
                                  ['sınavlar'][1];
                              /* print(list); */
                              return ListTile(
                                title: Text(args.icerik[index]['dersler']
                                    [index2]['dersIsmi']),
                                subtitle: Text(
                                    "${value['SınavIsmi']}: ${value['not']} / Harf Notu: ${value['harfNotu']}"),
                                trailing: Icon(Icons.chevron_right_outlined),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/examsDetails',
                                    arguments: ExamsDetails(
                                      exams: args.icerik[index]['dersler']
                                          [index2],
                                    ),
                                  );
                                },
                              );
                            })
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
