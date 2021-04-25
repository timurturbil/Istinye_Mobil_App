import 'package:flutter/material.dart';
import 'package:istinye_mobil/core/components/CustomListViewBuilder.dart';

class ExamsDetails extends StatelessWidget {
  final Map exams;

  const ExamsDetails({Key key, this.exams}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ExamsDetails args =
        ModalRoute.of(context).settings.arguments as ExamsDetails;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.exams['dersIsmi']),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(18),
                child: Text("SINAV TÜRÜ"),
              ),
              Container(
                margin: EdgeInsets.all(18),
                child: Text("NOT"),
              ),
            ],
          ),
          Divider(
            height: 0,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
          CustomListViewBuilder(list: args.exams['sınavlar'],)
        ],
      )),
    );
  }
}
