import 'package:flutter/material.dart';

class StartEditPage extends StatefulWidget {
  const StartEditPage({
    super.key,
  });

  @override
  State<StartEditPage> createState() => _StartEditPageState();
}

class _StartEditPageState extends State<StartEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [SizedBox(width: 200, child: TextField())],
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
                  child: Stack(
                    children: [
                      const Text('User Profile Picture'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('add/edit picture')),
                      )
                    ],
                  ),
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
                      TextField(
                        maxLines: 12,
                        maxLength: 250,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text('Confirme'))
          ],
        ),
      ),
    );
  }
}
