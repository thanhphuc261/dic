import 'package:flutter/material.dart';

class LocatePage extends StatefulWidget {
  const LocatePage({Key? key}) : super(key: key);

  @override
  _LocatePageState createState() => _LocatePageState();
}

class _LocatePageState extends State<LocatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ghi chú"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("GG Map"),
          onPressed: () {},
        ),
      ),
    );
  }
}
