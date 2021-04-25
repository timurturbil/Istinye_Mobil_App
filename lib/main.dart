import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:istinye_mobil/UI/model/user.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/ProgramDetails.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/SinavSonuclari.dart';
import 'package:istinye_mobil/UI/view/screens/StudentDetailScreens/examsDetails.dart';
import 'package:istinye_mobil/UI/view/screens/etkinlikler.dart';
import 'package:istinye_mobil/UI/view/screens/example.dart';
import 'package:istinye_mobil/UI/view/screens/haberler.dart';
import 'package:istinye_mobil/UI/view/screens/kampusler.dart';
import 'package:istinye_mobil/UI/view/view.dart';
import 'package:istinye_mobil/UI/view/wrapper.dart';
import 'package:istinye_mobil/core/services/auth/auth.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'UI/view/screens/duyurular.dart';

/* void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp()
  ) );
} */

/* void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SentryFlutter.init(
      (options) => options
        ..dsn =
            'https://284bce13622944a3ae7ee5e0c19d647e@o577277.ingest.sentry.io/5731882',
        /* ..release = 'com.istinye.istinye_mobil'
        ..environment = 'staging', */
      appRunner: () => runApp(MyApp()));
} */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users>.value(
        value: AuthServices().usert,
        child: GetMaterialApp(
          /* locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder, */
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => HomePage(),
            '/duyurular': (context) => DuyurularEkrani(),
            '/etkinlikler': (context) => EtkinliklerEkrani(),
            '/haberler': (context) => HaberlerEkrani(),
            '/kampusler': (context) => KampuslerEkrani(),
            '/aksis': (context) => Wrapper(),
            '/program-bilgileri': (context) => ProgramDetails(),
            '/sinav-sonuclari': (context) => SinavSonuclari(),
            '/examsDetails': (context) => ExamsDetails()
          },
        ));
  }
}
