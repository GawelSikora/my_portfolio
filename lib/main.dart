import 'package:flutter/material.dart';

import 'pages/home page/home_page.dart';
import 'pages/start edit page/start_edit_page.dart';

void main() {
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
      home: StartEditPage(),
    );
  }
}
