import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/SinavSonuclari.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';

class ProgramDetails extends StatelessWidget {
  final Map programlar;

  const ProgramDetails({Key key, this.programlar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ProgramDetails args =
        ModalRoute.of(context).settings.arguments as ProgramDetails;

    /* print(args.programlar); */
    return Scaffold(
      appBar: AppBar(
        title: Text("${args.programlar['programAdi']}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NameOfSections(
              name: "PROGRAM BİLGİLERİ",
            ),
            ListTile(
              title: Text("Program Detaylari"),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
            ListTile(
              title: Text("Sınav Sonuçları ve Notlar"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/sinav-sonuclari',
                  arguments: SinavSonuclari(
                    icerik: args.programlar['icerik'],
                  ),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            NameOfSections(
              name: "BİRİM  BİLGİLERİ",
            ),
            ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text("15468415642"),
              subtitle: Text("Numara"),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("DEVAMLI ÖĞRENCİ"),
              subtitle: Text("Statü"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sınav Sonuçları ve Notlar"),
            ),
            NameOfSections(
              name: "ÖDEME BİLGİLERİ",
            ),
            ListTile(
              leading: Icon(Icons.wallet_travel),
              title: Text("Bahar dönemi için borcunuz 0 ₺"),
              subtitle: Text("Katkı payı borcunuz bulunmamaktadır"),
            ),
          ],
        ),
      ),
    );
  }
}
