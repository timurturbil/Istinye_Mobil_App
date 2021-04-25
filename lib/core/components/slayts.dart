import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlaytsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/575x315/public/2021-04/Etkinlik_Afis_2020_2021_KariyerYolundaSAP%C3%87%C3%B6z%C3%BCmlerininYeri_listimaj.jpg?itok=kwnUEuQM',
      'https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/575x315/public/2021-04/Etkinlik_Afis_2020_2021_%C3%87ocuklari%C3%A7inMod%C3%BClerMekan%C3%87%C3%B6z%C3%BCmleriYar%C4%B1%C5%9Fmas%C4%B1_listimaj_0.jpg?itok=XfdZn6pW',
      'https://www.istinye.edu.tr/sites/istinye.edu.tr/files/styles/376x/public/news/2021-03/%C4%B0MAGE%20.jpg?itok=lJHj53PN',
      'https://medicine.istinye.edu.tr/sites/medicine.istinye.edu.tr/files/news/2021-03/%C4%B0MAGEEEEE.jpg'
    ];

    return CarouselSlider(
      options: CarouselOptions(
        /* height: 160, */
        aspectRatio: 22 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        /* autoPlay: true, */
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
                /* margin: EdgeInsets.symmetric(horizontal: 5.0), */
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("$i"))),
                child: TextButton(
                    onPressed: () => print("bastıı"), child: Text("")));
          },
        );
      }).toList(),
    );
  }
}
