import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:istinye_mobil/UI/model/modelProduct.dart';
import 'package:istinye_mobil/UI/view-model/view_model.dart';

class DuyurularEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _viewProduct = ViewModel();

    print(_viewProduct.products);
    return Scaffold(
        appBar: AppBar(
          title: Text("DuyurularEkrani"),
        ),
        body: Observer(builder: (_) {
          return Center(
            child: FutureBuilder<List<Product>>(
                future: _viewProduct.getProducts(),
                builder: (ctx, snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (ctx, index) {
                          return ListTile(
                            title: Text(snapshot.data[index].name),
                            subtitle: Text(snapshot.data[index].email),
                            onTap: () => print("basttı"),
                          );
                        });
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                }),
          );
        }));
  }
}
