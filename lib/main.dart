import 'package:flutter/material.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Name\'s Porfolio'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: const Text('User Profile Picture'),
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 200,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'About me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Text about you'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.art_track),
                    label: const Text('My Art')),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.list),
                    label: const Text('Other Achievements')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
