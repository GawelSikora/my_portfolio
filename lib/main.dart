import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'pages/start edit page/start_edit_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('StringsBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StartEditPage(),
    );
  }
}
