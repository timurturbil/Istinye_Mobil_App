import 'package:flutter/material.dart';

class NameOfSections extends StatelessWidget {
  final String name;
  final String route;

  const NameOfSections({Key key, this.name, this.route}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                (() {
                  if (route != null) {
                    return IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/$route',
                          );
                        },
                        icon: Icon(Icons.dashboard_customize));
                  } else {
                    return Container();
                  }
                }())
              ]),
          const Divider(
            height: 0,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
        ],
      ),
    );
  }
}
