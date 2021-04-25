import 'dart:async';
import 'dart:math';

import 'package:istinye_mobil/UI/model/user.dart';
import 'package:istinye_mobil/core/services/auth/auth.dart';
import 'package:mobx/mobx.dart';
part 'stream_view_model.g.dart';

class RandomStore = _RandomStoreBase with _$RandomStore;

abstract class _RandomStoreBase with Store {
  AuthServices user = AuthServices();
  _RandomStoreBase() {
    _streamController = StreamController<Stream<Users>>();

    _timer = Timer.periodic(const Duration(seconds: 1),
        (_) => _streamController.add(user.usert));

    randomStream = ObservableStream(_streamController.stream);
  }

  Timer _timer;

  /* final _random = Random(); */

  StreamController<Stream<Users>> _streamController;

  ObservableStream<Stream<Users>> randomStream;

  // ignore: avoid_void_async
  void dispose() async {
    _timer.cancel();
    await _streamController.close();
  }
}
