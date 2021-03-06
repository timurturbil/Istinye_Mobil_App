import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:istinye_mobil/UI/view-model/stream_view_model.dart';

class RandomNumberExample extends StatefulWidget {
  const RandomNumberExample();

  @override
  _RandomNumberExampleState createState() => _RandomNumberExampleState();
}

class _RandomNumberExampleState extends State<RandomNumberExample> {
  final RandomStore store = RandomStore();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Random number',
              style: TextStyle(color: Colors.grey),
            ),
            Observer(
              builder: (_) {
                final value = store.randomStream.value;

                return Text(
                  '${value == null ? '---' : value}',
                  style: TextStyle(fontSize: 96),
                );
              },
            ),
          ],
        ),
      ));

  @override
  void dispose() {
    store.dispose();
  }
}