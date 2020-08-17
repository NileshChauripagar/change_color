import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sampal App",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Color> randomColorslist = [
    Color(0xFFDA0049),
    Color(0xFF2CFF02),
    Color(0xFF0039F3),
    Color(0xFFE3F300),
    Color(0xFFF300BE),
  ];
  int index;
  Color randomcolrs;
  void changecolor() {
    setState(() {
      index = Random().nextInt(randomColorslist.length);
      randomcolrs = randomColorslist[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: randomcolrs),
      child: FlatButton(
        onPressed: changecolor,
        splashColor: Colors.red,
        child: Text(
          "change me !",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }
}
