import 'package:flutter/material.dart';

class DicPage extends StatefulWidget {
  const DicPage({Key? key}) : super(key: key);

  @override
  _DicPageState createState() => _DicPageState();
}

class _DicPageState extends State<DicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ghi chú"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Search"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
