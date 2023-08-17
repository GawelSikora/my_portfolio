import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_portfolio/pages/home%20page/home_page.dart';

import 'pages/start edit page/start_edit_page.dart';

import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('StringsBox');
  await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('StringsBox');

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: box.get('isFirstTime') == null ? const StartEditPage() : HomePage(),
    );
  }
}
