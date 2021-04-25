import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:istinye_mobil/core/components/nameOfSections.dart';

class EtkinliklerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/376x/public/news/2021-03/afi%C5%9F.png?itok=-kSCHyDP',
      'https://iisbf.istinye.edu.tr/sites/iibf.istinye.edu.tr/files/inline-images/Aybike%20Sertta%C5%9F.png',
      'https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/376x/public/news/2021-03/%C4%B0MAGE%20.jpg?itok=lJHj53PN',
      'https://medicine.istinye.edu.tr/sites/medicine.istinye.edu.tr/files/news/2021-03/%C4%B0MAGEEEEE.jpg'
    ];
    return Column(
      children: <Widget>[
        NameOfSections(name: "ETKİNLİKLER",route: "etkinlikler",),
        CarouselSlider(
      options: CarouselOptions(
        /* height: 160, */
        aspectRatio: 22 / 9,
        viewportFraction: 0.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        /* onPageChanged: callbackFunction, */
        scrollDirection: Axis.horizontal,
      ),
      items: imageList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("$i"))),
                child: TextButton(
                    onPressed: () => print("bastıı"), child: Text("")));
          },
        );
      }).toList(),
    )
      ],
    );
  }
}
