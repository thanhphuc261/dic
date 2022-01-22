import 'package:flutter/material.dart';
import 'screen/dictionary.dart';
import 'screen/location.dart';
import 'screen/notes.dart';
import 'screen/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "My Dictionary",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(title: Text("Vocabulary")),
            ListTile(title: Text("Location")),
            ListTile(title: Text("Notes")),
            ListTile(title: Text("Profile")),
            ListTile(title: Text("Setting")),
            ListTile(title: Text("Info")),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DicPage()));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/dictionary.png'),
                      radius: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Từ điển"),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => LocatePage()));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/locate.png'),
                      radius: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Từ điển"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => NotePage()));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/notes.png'),
                      radius: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Từ điển"),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ProfilePage()));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/person.png'),
                      radius: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Từ điển"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
