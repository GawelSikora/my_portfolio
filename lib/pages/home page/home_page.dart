import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_portfolio/pages/start%20edit%20page/start_edit_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final _box = Hive.box('StringsBox');

  String name() {
    final get = _box.get('name');

    var name = get ?? 'name';

    return name;
  }

  String aboutMe() {
    final get = _box.get('aboutMe');

    var aboutMe = get ?? 'about me';

    return aboutMe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${name()}\'s Porfolio'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StartEditPage(),
                    ));
              },
              icon: const Icon(Icons.edit)),
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
                  width: 120,
                  color: Colors.blue,
                  child: const Text('User Profile Picture'),
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 160,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'About Me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(aboutMe()),
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
