import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = new Random();
  int colorIndex = 0;

  void randomColorIndex() {
    setState(() => colorIndex = Random().nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => randomColorIndex(),
      child: Container(
        color: Color(colorIndex),
        child: Center(
          child: Text(
              'Hey there',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Color(0xffffffff -  colorIndex).withAlpha(255),
                fontSize: 32,
              ),
            ),
        ),
      ),
    );
  }
}

