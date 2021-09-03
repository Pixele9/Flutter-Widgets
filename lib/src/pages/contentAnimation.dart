import 'dart:math';

import 'package:flutter/material.dart';

class ContentAnimation extends StatefulWidget {
  @override
  _ContentAnimationState createState() => _ContentAnimationState();
}

class _ContentAnimationState extends State<ContentAnimation> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeShape,
        backgroundColor: Colors.green[400],
      ),
    );
  }

  void _changeShape() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), // R
          random.nextInt(255), // G
          random.nextInt(255), // B
          1 // O
          );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
