import 'package:flutter/material.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/ProgramDetails.dart';

class CustomListViewBuilder extends StatelessWidget {
  final List list;
  final Icon leading;
  final String trailing;
  final String route;
  const CustomListViewBuilder({Key key, this.list, this.leading, this.route, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: <Widget>[
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                /* print(list); */
                return ListTile(
                  leading: leading != null ? leading : null,
                  title: Text(list[index].values.elementAt(0)),
                  subtitle: Text(list[index].values.elementAt(1)),
                  trailing: list[index]['not'] != null ? Text(list[index]['not']) :Icon(Icons.chevron_right_outlined),
                  onTap: () {
                    route != null ? Navigator.pushNamed(
                      context,
                      '/$route',
                      arguments: ProgramDetails(
                        programlar: list[index],
                      ),
                    ): null;
                  },
                );
              })
        ],
      ),
    );
  }
}
