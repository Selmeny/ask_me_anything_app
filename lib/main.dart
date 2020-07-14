import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: Colors.grey[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: FlatButton(
          padding: EdgeInsets.all(40),
          onPressed: () {
            showAnswer();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  void showAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
