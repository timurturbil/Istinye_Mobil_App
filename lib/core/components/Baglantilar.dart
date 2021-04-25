import 'package:flutter/material.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';

class BaglantilarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NameOfSections(
          name: "BAĞLANTILAR",
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BaglantiCarti(
                name: "İSÜKAM",
                icon: Icon(Icons.school_outlined),
              ),
              BaglantiCarti(
                icon: Icon(Icons.local_activity_outlined),
                name: "İSÜ3D",
              ),
              BaglantiCarti(
                icon: Icon(Icons.add_business_outlined),
                name: "İSÜCAN",
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BaglantiCarti(
                icon: Icon(Icons.alt_route_outlined),
                name: "İSÜKÖK",
              ),
              BaglantiCarti(
                icon: Icon(Icons.phone),
                name: "İLETİŞİM",
              ),
              BaglantiCarti(icon: Icon(Icons.computer), name: "Bilgİslem"),
            ],
          ),
        ),
      ],
    );
  }
}

class BaglantiCarti extends StatelessWidget {
  final Icon icon;
  final String name;

  const BaglantiCarti({Key key, this.icon, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 80,
      margin: new EdgeInsets.all(14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 4.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              offset: Offset(
                0.4, // Move to right 10  horizontally
                0.4, // Move to bottom 10 Vertically
              ), // Shadow position
            ),
          ],
          color: Colors.white),
      child: Column(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: icon ?? Icon(Icons.ac_unit),
          ),
          Text(name)
        ],
      ),
    );
  }
}
