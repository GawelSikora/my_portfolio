import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_portfolio/pages/home%20page/home_page.dart';

class StartEditPage extends StatefulWidget {
  const StartEditPage({
    super.key,
  });

  @override
  State<StartEditPage> createState() => _StartEditPageState();
}

class _StartEditPageState extends State<StartEditPage> {
  final _box = Hive.box('StringsBox');

  var controllerName = TextEditingController();
  var controllerAboutMe = TextEditingController();
  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodeAboutMe = FocusNode();

  void saveName() {
    final name = controllerName.text;

    _box.put('name', name);
  }

  void saveAboutMe() {
    final aboutMe = controllerAboutMe.text;

    _box.put('aboutMe', aboutMe);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
              width: 200,
              child: TextField(
                maxLength: 30,
                controller: controllerName,
                focusNode: focusNodeName,
              )),
          IconButton(
              onPressed: () {
                focusNodeName.unfocus();
                saveName();
              },
              icon: const Icon(
                Icons.check_box_rounded,
                color: Colors.greenAccent,
                size: 40,
              )),
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
                  child: Stack(
                    children: [
                      const Text('User Profile Picture'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('add/change picture')),
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
                    children: [
                      const Text(
                        'About me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        maxLines: 12,
                        maxLength: 250,
                        controller: controllerAboutMe,
                        focusNode: focusNodeAboutMe,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {
                                  focusNodeAboutMe.unfocus();
                                  saveAboutMe();
                                },
                                icon: const Icon(
                                  Icons.check_box_rounded,
                                  color: Colors.greenAccent,
                                  size: 40,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: const Text('Confirm')),
          ],
        ),
      ),
    );
  }
}
